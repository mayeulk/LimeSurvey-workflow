DROP TABLE IF EXISTS lime_question_history_981966;

CREATE TABLE lime_question_history_981966
(
    -- the name of the workgroup/team of contributors working
	-- on a single survey. For NRGI, the country name and sector name:
	workgroup varchar(100),
	modiftime timestamp, 	-- when the modification took place
	role varchar(100),    -- the role of the modifier (researcher, reviewer...)
	questiongroupid	integer,  -- the group in the LimeSurvey sense of "group of questions", as in  surveyXgroupXquestion
	questionid integer,   -- the question in the LimeSurvey sense, as in  surveyXgroupXquestion
	previousvalue text,
	newvalue text
);