/*
There are many ways. I suggest doing at runtime, logging to a table or to both a table and a file.
This is a performance killer, and this is server wide, so switch it off afterwards.

You can set log options in the my.cnf file (/etc/mysql/my.cnf in ubuntu) and/or as parameters when launching the server.
Uncomment this:
#general_log_file        = /var/log/mysql/mysql.log
#general_log             = 1

But the following method works on any platform and does not require a server restart:

You should log in in MySQL with superuser priviledge (eg root).
https://bitnami.com/stack/limesurvey/README.txt  says:
MySQL admin user is called 'root', and its password is the same as the LimeSurvey administrative user password.

Then run this SQL query:
*/
SET GLOBAL general_log = 'ON';

-- Then 3 options:
-- -----
-- log to file and to log table:
SET GLOBAL log_output = 'FILE,TABLE';
-- (then see below)
-- -------
-- logs go to a file:
SET GLOBAL log_output = FILE;  -- or 'FILE'
SET GLOBAL general_log_file  = '/home/mk/NRGI/mysql_logs_limesurvey.txt';
SET GLOBAL general_log = 'ON';

-- then in a shell:

-- tail /var/log/mysql/mysql.log
-- -----
-- Or logs go to a table:

SET GLOBAL general_log = 'OFF'; -- not sure this is needed
SET GLOBAL log_output = 'TABLE';  -- note the mysql manual wrongly suggests doing it without quotes
-- (but TABLE is a reserved word)
SET GLOBAL general_log = 'ON';

-- Within MySQL, to display the structure of the log table, use:
SHOW CREATE TABLE mysql.general_log;
/* Should be:
 `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
*/

-- Log contents are accessible through SQL statements, such as:

SELECT event_time, command_type, argument FROM mysql.general_log
ORDER BY event_time DESC
LIMIT 50
 ;

-- For our purpose:
-- -----------
SELECT event_time, command_type, argument
FROM mysql.general_log
WHERE
argument like '%UPDATE%'
-- argument like '%UPDATE lime_survey_123456 %'  -- use this instead TO BE MORE SPECIFIC.
-- The space after the number above is helpful to filter out lime_survey_123456_timings
AND argument not like '%mysql.general_log%'
ORDER BY event_time DESC
LIMIT 50;
-- -----------
/*
Some links:
http://dev.mysql.com/doc/refman/5.7/en/query-log.html
http://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_log_output
http://dev.mysql.com/doc/refman/5.7/en/log-destinations.html

Hope this helps,
Mayeul
*/