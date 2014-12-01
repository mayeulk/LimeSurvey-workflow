



-- The following gives the name of the field (of the lime_survey_662654 table) where to find the status of rights for a group of question
-- This assumes each group has one multiple checkbox question. THe code (titles) of the subquestions should be like rightsresearcher
SELECT CONCAT(
CAST(sid AS CHAR(7)), 'X',
CAST(gid AS CHAR(4)), 'X',
CAST(qid AS CHAR(4)),
title -- could be e.g. rightsresearcher. This is the title of a subquestion of a multiple checkbox question, eg '662654X14X57'
) AS SGQ  -- eg '662654X14X57rightsresearcher'

FROM bitnami_limesurvey.lime_questions
-- lime_survey_662654
WHERE
sid= 662654 -- current surveyid
AND gid = 14   -- CURRENT GROUPID to set based on answer from AJAX call
AND title like 'rightsresearcher' -- this requires to add rightsresearcher at the name of the question code which contains the rights 
;