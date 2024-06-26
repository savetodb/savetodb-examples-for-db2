--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 02 - Advanced SaveToDB Features
-- Version 10.13, April 29, 2024
--
-- Copyright 2017-2024 Gartle LLC
--
-- License: MIT
-- =============================================

DELETE FROM XLS.FORMATS         WHERE TABLE_SCHEMA IN ('S02','s02');
DELETE FROM XLS.HANDLERS        WHERE TABLE_SCHEMA IN ('S02','s02');
DELETE FROM XLS.OBJECTS         WHERE TABLE_SCHEMA IN ('S02','s02');
DELETE FROM XLS.TRANSLATIONS    WHERE TABLE_SCHEMA IN ('S02','s02');
DELETE FROM XLS.WORKBOOKS       WHERE TABLE_SCHEMA IN ('S02','s02');

DROP PROCEDURE  S02.USP_CASH_BY_MONTHS;
DROP PROCEDURE  S02.USP_CASH_BY_MONTHS_CHANGE;
DROP PROCEDURE  S02.USP_CASHBOOK;
DROP PROCEDURE  S02.USP_CASHBOOK2;
DROP PROCEDURE  S02.USP_CASHBOOK3;
DROP PROCEDURE  S02.USP_CASHBOOK4;
DROP PROCEDURE  S02.USP_CASHBOOK5;
DROP PROCEDURE  S02.USP_CASHBOOK2_INSERT;
DROP PROCEDURE  S02.USP_CASHBOOK2_UPDATE;
DROP PROCEDURE  S02.USP_CASHBOOK2_DELETE;
DROP PROCEDURE  S02.USP_CASHBOOK3_CHANGE;
DROP PROCEDURE  S02.USP_CASHBOOK4_MERGE;

DROP PROCEDURE  S02.XL_CONTEXT_MENU_CASH_BY_MONTHS;
DROP PROCEDURE  S02.XL_LIST_ACCOUNT_ID;
DROP PROCEDURE  S02.XL_LIST_COMPANY_ID;
DROP PROCEDURE  S02.XL_LIST_COMPANY_ID_FOR_ITEM_ID;
DROP PROCEDURE  S02.XL_LIST_COMPANY_ID_WITH_ITEM_ID;
DROP PROCEDURE  S02.XL_LIST_ITEM_ID;

DROP VIEW       S02.VIEW_CASHBOOK;
DROP VIEW       S02.VIEW_CASHBOOK2;
DROP VIEW       S02.VIEW_CASHBOOK3;
DROP VIEW       S02.VIEW_TRANSLATIONS;
DROP VIEW       S02.XL_ACTIONS_ONLINE_HELP;

DROP TABLE      S02.CASHBOOK;
DROP TABLE      S02.ACCOUNTS;
DROP TABLE      S02.ITEM_COMPANIES;
DROP TABLE      S02.COMPANIES;
DROP TABLE      S02.ITEMS;

DROP SCHEMA     S02 RESTRICT;

echo Application removed
