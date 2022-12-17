--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 02 - Advanced SaveToDB Features
-- Version 10.6, December 13, 2022
--
-- Copyright 2017-2022 Gartle LLC
--
-- License: MIT
-- =============================================

GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ACCOUNTS            TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.COMPANIES           TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ITEMS               TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ITEM_COMPANIES      TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.CASHBOOK            TO SAMPLE02_USER1;

GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK       TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK2      TO SAMPLE02_USER1;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK3      TO SAMPLE02_USER1;

GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK                     TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2                    TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK3                    TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK4                    TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK5                    TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_INSERT             TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_UPDATE             TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_DELETE             TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK3_CHANGE             TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK4_MERGE              TO SAMPLE02_USER1;

GRANT EXECUTE ON PROCEDURE S02.USP_CASH_BY_MONTHS               TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.USP_CASH_BY_MONTHS_CHANGE        TO SAMPLE02_USER1;

GRANT EXECUTE ON PROCEDURE S02.XL_CONTEXT_MENU_CASH_BY_MONTHS   TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_ACCOUNT_ID               TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID               TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID_FOR_ITEM_ID   TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID_WITH_ITEM_ID  TO SAMPLE02_USER1;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_ITEM_ID                  TO SAMPLE02_USER1;

GRANT SELECT ON XLS.FORMATS                                     TO SAMPLE02_USER1;
GRANT SELECT ON XLS.WORKBOOKS                                   TO SAMPLE02_USER1;


GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ACCOUNTS            TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.COMPANIES           TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ITEMS               TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.ITEM_COMPANIES      TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.CASHBOOK            TO SAMPLE02_USER3;

GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK       TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK2      TO SAMPLE02_USER3;
GRANT SELECT, INSERT, UPDATE, DELETE ON S02.VIEW_CASHBOOK3      TO SAMPLE02_USER3;

GRANT SELECT ON S02.XL_ACTIONS_ONLINE_HELP                      TO SAMPLE02_USER3;
GRANT SELECT ON S02.VIEW_TRANSLATIONS                           TO SAMPLE02_USER3;

GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK                     TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2                    TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK3                    TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK4                    TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK5                    TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_INSERT             TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_UPDATE             TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK2_DELETE             TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK3_CHANGE             TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASHBOOK4_MERGE              TO SAMPLE02_USER3;

GRANT EXECUTE ON PROCEDURE S02.USP_CASH_BY_MONTHS               TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.USP_CASH_BY_MONTHS_CHANGE        TO SAMPLE02_USER3;

GRANT EXECUTE ON PROCEDURE S02.XL_CONTEXT_MENU_CASH_BY_MONTHS   TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_ACCOUNT_ID               TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID               TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID_FOR_ITEM_ID   TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_COMPANY_ID_WITH_ITEM_ID  TO SAMPLE02_USER3;
GRANT EXECUTE ON PROCEDURE S02.XL_LIST_ITEM_ID                  TO SAMPLE02_USER3;

GRANT ROLE XLS_USERS TO USER SAMPLE02_USER3;