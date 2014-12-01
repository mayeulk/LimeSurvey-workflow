DROP TABLE IF EXISTS lime_question_history_981966;

CREATE TABLE lime_question_history_981966
	AS (
		SELECT * FROM lime_survey_981966
		LIMIT 0
);

ALTER TABLE lime_question_history_981966
	DROP COLUMN submitdate,
	DROP COLUMN lastpage,
	DROP COLUMN startlanguage,
	DROP COLUMN startdate,
	DROP COLUMN datestamp,
	DROP COLUMN ipaddr,
	DROP COLUMN refurl;

-- DROP COLUMN does not nevessarily physically remove the data, and for fixed length types
-- (int, numeric, float, datetime, uniqueidentifier etc)
-- the space may be consumed even for records added after the columns were dropped.
-- To get rid of the wasted space in some systems do a REBUILD;

ALTER TABLE lime_question_history_981966
    -- the name of the workgroup/team of contributors working
	-- on a single survey. For NRGI, the country name and sector name:
	ADD COLUMN workgroup varchar(100),
	ADD COLUMN modiftime timestamp, 	-- when the modification took place
	ADD COLUMN role varchar(100),    -- the role of the modifier (researcher, reviewer...)
	ADD COLUMN modiftype varchar(100);    -- the role of the modifier (researcher, reviewer...)

