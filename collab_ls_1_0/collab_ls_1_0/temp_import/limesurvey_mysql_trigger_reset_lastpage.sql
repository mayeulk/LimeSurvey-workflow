 delimiter //
DROP TRIGGER IF EXISTS lastpage_reset;
-- This BEFORE trigger will effectively modify submitdate before it is written in the table
CREATE TRIGGER lastpage_reset BEFORE UPDATE ON lime_survey_834795
FOR EACH ROW
BEGIN
  IF NEW.submitdate != OLD.submitdate THEN
	SET NEW.lastpage =  0;
  END IF;
END;//

