--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 01 - Basic SaveToDB Features
-- Version 10.6, December 13, 2022
--
-- Copyright 2012-2022 Gartle LLC
--
-- License: MIT
-- =============================================

GRANT SELECT, INSERT, UPDATE, DELETE ON S01.CASHBOOK        TO SAMPLE01_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.FORMATS         TO SAMPLE01_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.WORKBOOKS       TO SAMPLE01_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.VIEW_CASHBOOK   TO SAMPLE01_USER1;

GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK                 TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2                TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK3                TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK4                TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_INSERT         TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_UPDATE         TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_DELETE         TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK3_CHANGE         TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK4_MERGE          TO SAMPLE01_USER1;

GRANT EXECUTE ON PROCEDURE S01.USP_CASH_BY_MONTHS           TO SAMPLE01_USER1;
GRANT EXECUTE ON PROCEDURE S01.USP_CASH_BY_MONTHS_CHANGE    TO SAMPLE01_USER1;

GRANT SELECT, INSERT, UPDATE, DELETE ON S01.CASHBOOK        TO SAMPLE01_USER2;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.FORMATS         TO SAMPLE01_USER2;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.WORKBOOKS       TO SAMPLE01_USER2;
GRANT SELECT, INSERT, UPDATE, DELETE ON S01.VIEW_CASHBOOK   TO SAMPLE01_USER2;

GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK                 TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2                TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK3                TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK4                TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_INSERT         TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_UPDATE         TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK2_DELETE         TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK3_CHANGE         TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASHBOOK4_MERGE          TO SAMPLE01_USER2;

GRANT EXECUTE ON PROCEDURE S01.USP_CASH_BY_MONTHS           TO SAMPLE01_USER2;
GRANT EXECUTE ON PROCEDURE S01.USP_CASH_BY_MONTHS_CHANGE    TO SAMPLE01_USER2;