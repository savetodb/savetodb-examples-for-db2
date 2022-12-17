--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 02 - Advanced SaveToDB Features
-- Version 10.6, December 13, 2022
--
-- Copyright 2017-2022 Gartle LLC
--
-- License: MIT
-- =============================================

SELECT
    CHAR(TABSCHEMA, 15) AS SCHEMA
    , CHAR(TABNAME, 30) AS NAME
    , CASE "TYPE"
        WHEN 'T' THEN 'TABLE'
        WHEN 'V' THEN 'VIEW'
        ELSE "TYPE"
        END AS "TYPE"
FROM
    SYSCAT.TABLES
WHERE
    TABSCHEMA IN ('S02')
UNION ALL
SELECT
    CHAR(PROCSCHEMA, 15) AS SCHEMA
    , CHAR(PROCNAME, 30) AS NAME
    , 'PROCEDURE' AS "TYPE"
FROM
    SYSCAT.PROCEDURES
WHERE
    PROCSCHEMA IN ('S02')
ORDER BY
    SCHEMA, NAME;
