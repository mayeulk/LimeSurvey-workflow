-- CREATE EXTENSION "uuid-ossp";


CREATE TABLE history_
(
 pkey_ uuid NOT NULL DEFAULT uuid_generate_v1mc(), -- The primary key for this table, though no primary key constraint was created (for the sake of performance and conservation). This column and timestamp_ column are the only two columns about this table itself. All other columns are about the inserted/modified/deleted record in some other table.
 table_name_ character varying(120) NOT NULL, -- Name of table whose row is being affected (inserted, deleted, or modified).
 column_name_ character varying(120) NOT NULL, -- Name of the column in some other table whose row value is being modified. This column's value is empty string if the operation was DELETE.
 timestamp_ timestamp with time zone NOT NULL DEFAULT clock_timestamp(), -- The moment this record was created. Using the clock_timestamp() function as a default, to capture the actual moment in time rather than moment when transaction began.
 db_user_name_ character varying(120) NOT NULL DEFAULT "current_user"(), -- The name of the Postgres user logged in to this database connection/session.
 app_name_ character varying(120) NOT NULL DEFAULT current_setting('application_name'::text), -- The name of the application connected to the database. May also include the version number of app, and the name of the human user authenticated within the app.
 old_value_ character varying(120) NOT NULL DEFAULT ''::character varying,
 new_value_ character varying(120) NOT NULL DEFAULT ''::character varying,
 uuid_ uuid NOT NULL, -- The UUID of the row being affected, the row being inserted, updated, or deleted. Assumes every table whose history is being recorded uses the 'uuid' data type as its primary key.
 operation_ character varying(120) NOT NULL, -- What database operation resulted in this trigger running: INSERT, UPDATE, DELETE, or TRUNCATE.
 table_oid_ oid NOT NULL, -- The oid of the table whose record is being modified. May be helpful if a table name changes over time.
 ordinal_position_of_column_ integer NOT NULL, -- The position of the affected column in its table. Every new column gets a number, incremented by one for each. This may be helpful when analyzing changes across a stretch of time during which a column's name was changed. Apparently columns have no oid, so we are recording this number instead.
 transaction_began_ timestamp with time zone NOT NULL DEFAULT transaction_timestamp() -- The time when the current transaction began. Can act like a transaction identifier, to group multiple "history_" rows of the same transaction together. This is not foolproof, as multiple transaction could possibly start in the same split second moment. Assuming the computer's clock has a fine resolution, this chance of a coincidence should be quite miniscule.
)

-- DROP TABLE IF EXISTS "lime_survey_981966";
CREATE TABLE "lime_survey_981966_" (
  "id" integer NOT NULL,
  "token" varchar(36)  DEFAULT NULL,
  "submitdate" time DEFAULT NULL,
  "lastpage" integer DEFAULT NULL,
  "startlanguage" varchar(20) NOT NULL,
  "startdate" time ,
  "datestamp" time ,
  "ipaddr" text ,
  "refurl" text ,
  "981966X8X27" text ,
  "981966X7X19" varchar(5)  DEFAULT NULL,
  "981966X7X37" varchar(5)  DEFAULT NULL,
  "981966X7X20" text ,
  "981966X7X21" text ,
  "981966X7X22" text ,
  "981966X7X26" text ,
  "981966X7X23" text ,
  "981966X7X24" text ,
  "981966X7X25" text ,
  "981966X7X39" text ,
  "981966X7X41" text ,
  "981966X7X43" text ,
  "981966X10X29" varchar(5)  DEFAULT NULL,
  "981966X10X38" varchar(5)  DEFAULT NULL,
  "981966X10X30" varchar(5)  DEFAULT NULL,
  "981966X10X30other" text ,
  "981966X10X35" varchar(5)  DEFAULT NULL,
  "981966X10X35other" text ,
  "981966X10X36" varchar(5)  DEFAULT NULL,
  "981966X10X36other" text ,
  "981966X10X31" text ,
  "981966X10X32" text ,
  "981966X10X33" text ,
  "981966X10X34" text ,
  "981966X10X40" text ,
  "981966X10X42" text ,
  "981966X10X44" text ,
  "981966X9X28" text 
)  ;


CREATE OR REPLACE FUNCTION make_history_()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$BODY$
/*     Purpose: Make a history of changes to most fields in the table calling this trigger function.
       This kind of history tracking is also known as an "audit trail".
       This function works by detecting each change in value for important fields in a certain table.
       This trigger function then calls another function to create a row in the "history_" table.
    This kind of feature is often called an "audit trail" by software developers. I avoid using that term in this context as a real
    audit trail in accounting terms involves more than this simple field change tracking.
*/
/*    © 2011 Basil Bourque. This source code may be used freely forever by anyone taking full responsibility for doing so, without warranty.
  
    Thanks so very much to John DeSoi of the pgsql-general@postgresql.org mailing list for pointing me to this crucial code example:
    http://wiki.postgresql.org/wiki/PL/pgSQL_Dynamic_Triggers
    Before reading that example, my previous efforts led me to conclude a generic history facility written in PL/pgSQL was impossible.
*/
/*     We make these assumptions about any table using this function in its trigger:
           • Has a primary key named "pkey_" of type uuid.
           • Has a field tracking the datetime the record was last modified, named "record_modified_" of type timestamptz.
           • Is in the default/current schema.
       While it might be nice to rewrite this function to escape these assumptions, I've spent all my energies to get this far.
    I welcome feedback from anyone who want to take this further.
*/


/*

For each table on which you want history, create a trigger by executing SQL like this:
CREATE TRIGGER XXX_trigger_history_
AFTER INSERT OR UPDATE OR DELETE ON XXX_
FOR EACH ROW EXECUTE PROCEDURE make_history_();

where XXX is the name of the specific table.
*/

/*     Notes:
      
    The 'OLD' and 'NEW' variables represent the entire row whose INSERT/UPDATE/DELETE caused this trigger to run.
       The 'TG_xxx' variables are special variables created automatically by Postgres for the trigger function.
       For example, TG_OP indicates which modification operation is happening: INSERT, UPDATE, or DELETE.
       http://www.postgresql.org/docs/current/static/plpgsql-trigger.html
       "clock_timestamp()" gets the actual time at the moment of execution. In contrast, most other timestamp
       functions return the time when the current transaction began.
    For more information, see: http://www.postgresql.org/docs/current/static/functions-datetime.html
  
    The "history_" table also includes a column "transaction_began_" defaulting to "transaction_timestamp()". This timestamp can act
    like a transaction identifier, to group multiple "history_" rows of the same transaction together. This is not foolproof, as
    multiple transaction could possibly start in the same split second moment. Assuming the computer's clock has a fine resolution,
    this chance of a coincidence should be quite miniscule. If someone knows a way to get a true transaction id, please share.
*/

/*  History:
    2011-04-31    • Published on the general Postgres mailing list.
    2011-05-01    • Revised to not ignore the ".record_created_" field.
                  • Published on my blog at http://crafted-software.blogspot.com/.
*/

DECLARE
    ri RECORD; -- About this data type "RECORD": http://www.postgresql.org/docs/current/static/plpgsql-declarations.html#PLPGSQL-DECLARATION-RECORDS
    oldValue TEXT;
    newValue TEXT;
    isColumnSignificant BOOLEAN;
    isValueModified BOOLEAN;
BEGIN
    /*RAISE NOTICE E'\n    Running function: make_history_ ----------------\n\n    Operation: %\n    Schema: %\n    Table: %\n',
        TG_OP,
        TG_TABLE_SCHEMA,
        TG_TABLE_NAME;*/

    IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
        NEW.record_modified_ = clock_timestamp(); -- Record the moment this row is being saved.
      
        FOR ri IN
            -- Fetch a ResultSet listing columns defined for this trigger's table.
            SELECT ordinal_position, column_name, data_type
            FROM information_schema.columns
            WHERE
                table_schema = quote_ident(TG_TABLE_SCHEMA)
            AND table_name = quote_ident(TG_TABLE_NAME)
            ORDER BY ordinal_position
        LOOP
            -- For each column in this trigger's table, copy the OLD & NEW values into respective variables.
            -- NEW value
            EXECUTE 'SELECT ($1).' || ri.column_name || '::text' INTO newValue USING NEW;
            -- OLD value
            IF (TG_OP = 'INSERT') THEN   -- If operation is an INSERT, we have no OLD value, so use an empty string.
                oldValue := ''::varchar;
            ELSE   -- Else operation is an UPDATE, so capture the OLD value.
                EXECUTE 'SELECT ($1).' || ri.column_name || '::text' INTO oldValue USING OLD;
            END IF;
            -- Make noise for debugging.
            /*RAISE NOTICE E'\n    Column #: %\n    Name: %\n    Type: %\n    Old: %\n    New: %\n',
                ri.ordinal_position,
                ri.column_name,
                ri.data_type,
                oldValue,
                newValue;*/
              
            --    ToDo: Add code to throw an Exception if the primary key value is changing (other than from NULL on an INSERT).
          
            --     ToDo: Add code to ignore columns whose data type does not cast well to TEXT/VARCHAR.
          
            --    Ignore some columns:
            --         • Those whose names are marked with a trailing x.
            --        • The primary key.
            --         • Our timestamp field recording the row's  most recent modification.
            isColumnSignificant := (position( '_x_' in ri.column_name ) < 1) AND (ri.column_name <> 'pkey_') AND (ri.column_name <> 'record_modified_');
            IF isColumnSignificant THEN
                isValueModified := oldValue <> newValue;  -- If this nthField in the table was modified, make history.
                IF isValueModified THEN
                    /*RAISE NOTICE E'Inserting history_ row for INSERT or UPDATE.\n';*/
                    INSERT INTO history_ ( operation_, table_oid_, table_name_, uuid_, column_name_, ordinal_position_of_column_, old_value_, new_value_ )
                    VALUES ( TG_OP, TG_RELID, TG_TABLE_NAME, NEW.pkey_, ri.column_name::VARCHAR, ri.ordinal_position, oldValue::VARCHAR, newValue::VARCHAR );
                END IF;
            END IF;
        END LOOP;
  
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        /*RAISE NOTICE E'Inserting history_ row for DELETE.\n';*/
        --    Similar to INSERT above, but refers to OLD instead of NEW, and passes empty values for last 4 fields.
        INSERT INTO history_ ( operation_, table_oid_, table_name_, uuid_, column_name_, ordinal_position_of_column_, old_value_, new_value_ )
        VALUES ( TG_OP, TG_RELID, TG_TABLE_NAME, OLD.pkey_, ''::VARCHAR, 0, ''::VARCHAR, ''::VARCHAR );
        RETURN OLD;
      
    END IF;
     /* Should never reach this point. Branching in code above should always reach a call to RETURN. */
    RAISE EXCEPTION 'Unexpectedly reached the bottom of this function without calling RETURN.';
END;

$BODY$;


CREATE TRIGGER lime_survey_981966_trigger_history_
AFTER INSERT OR UPDATE OR DELETE ON lime_survey_981966_
FOR EACH ROW EXECUTE PROCEDURE make_history_();
