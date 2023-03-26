--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 13 - Tests
-- Version 10.8, January 9, 2023
--
-- Copyright 2021-2023 Gartle LLC
--
-- License: MIT
-- =============================================

SELECT
    CHAR(TABSCHEMA, 10) AS SCHEMA
    , CHAR(TABNAME, 30) AS NAME
    , CASE "TYPE"
        WHEN 'T' THEN 'TABLE'
        WHEN 'V' THEN 'VIEW'
        ELSE "TYPE"
        END AS "TYPE"
FROM
    SYSCAT.TABLES
WHERE
    TABSCHEMA IN ('S13')
UNION ALL
SELECT
    CHAR(PROCSCHEMA, 10) AS SCHEMA
    , CHAR(PROCNAME, 30) AS NAME
    , 'PROCEDURE' AS "TYPE"
FROM
    SYSCAT.PROCEDURES
WHERE
    PROCSCHEMA IN ('S13')
ORDER BY
    SCHEMA, NAME;
