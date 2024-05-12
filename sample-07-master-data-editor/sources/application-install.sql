--#SET TERMINATOR ;

-- =============================================
-- Application: Sample 07 - Master Data Editor
-- Version 10.13, April 29, 2024
--
-- Copyright 2017-2024 Gartle LLC
--
-- License: MIT
--
-- This example is a derivative work based on the Northwind database
-- https://northwinddatabase.codeplex.com/
-- =============================================

CREATE SCHEMA S07;

CREATE TABLE S07.EMPLOYEES (
    EMPLOYEE_ID INTEGER NOT NULL,
    LAST_NAME VARCHAR(20) NOT NULL,
    FIRST_NAME VARCHAR(10) NOT NULL,
    TITLE VARCHAR(30) NULL,
    TITLE_OF_COURTESY VARCHAR(25) NULL,
    BIRTH_DATE DATE NULL,
    HIRE_DATE DATE NULL,
    ADDRESS VARCHAR(60) NULL,
    CITY VARCHAR(15) NULL,
    REGION VARCHAR(15) NULL,
    POSTAL_CODE VARCHAR(10) NULL,
    COUNTRY VARCHAR(15) NULL,
    HOME_PHONE VARCHAR(24) NULL,
    EXTENSION VARCHAR(4) NULL,
    PHOTO BLOB NULL,
    NOTES CLOB NULL,
    REPORTS_TO INTEGER NULL,
    PHOTO_PATH VARCHAR(255) NULL,
  CONSTRAINT PK_EMPLOYEES PRIMARY KEY (EMPLOYEE_ID)
);

CREATE INDEX IX_EMPLOYEES_LAST_NAME ON S07.EMPLOYEES (LAST_NAME);

CREATE TABLE S07.EMPLOYEE_TERRITORIES (
    EMPLOYEE_ID INTEGER NOT NULL,
    TERRITORY_ID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_EMPLOYEE_TERRITORIES PRIMARY KEY (EMPLOYEE_ID,TERRITORY_ID)
);

CREATE TABLE S07.REGIONS (
    REGION_ID INTEGER NOT NULL,
    REGION_DESCRIPTION VARCHAR(50) NOT NULL,
  CONSTRAINT PK_REGIONS PRIMARY KEY (REGION_ID),
  CONSTRAINT IX_REGIONS_REGION_DESCRIPTION UNIQUE (REGION_DESCRIPTION)
);

CREATE TABLE S07.TERRITORIES (
    TERRITORY_ID VARCHAR(20) NOT NULL,
    TERRITORY_DESCRIPTION VARCHAR(50) NOT NULL,
    REGION_ID INTEGER NOT NULL,
  CONSTRAINT PK_TERRITORIES PRIMARY KEY (TERRITORY_ID)
);

CREATE INDEX IX_TERRITORIES_TERRITORY_DESCRIPTION ON S07.TERRITORIES (TERRITORY_DESCRIPTION);

INSERT INTO S07.REGIONS (REGION_ID, REGION_DESCRIPTION) VALUES (1, 'Eastern');
INSERT INTO S07.REGIONS (REGION_ID, REGION_DESCRIPTION) VALUES (2, 'Western');
INSERT INTO S07.REGIONS (REGION_ID, REGION_DESCRIPTION) VALUES (3, 'Northern');
INSERT INTO S07.REGIONS (REGION_ID, REGION_DESCRIPTION) VALUES (4, 'Southern');

INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08', '1992-05-01', '507 - 20th Ave. E. Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', NULL, 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', NULL, 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30', '1992-04-01', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', NULL, 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1937-09-19', '1993-05-03', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', NULL, 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04', '1993-10-17', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', NULL, 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02', '1993-10-17', 'Coventry House Miner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428', NULL, 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29', '1994-01-02', 'Edgeham Hollow Winchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465', NULL, 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course enTITLEd "Selling in Europe," he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09', '1994-03-05', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', NULL, 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO S07.EMPLOYEES (EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TITLE, TITLE_OF_COURTESY, BIRTH_DATE, HIRE_DATE, ADDRESS, CITY, REGION, POSTAL_CODE, COUNTRY, HOME_PHONE, EXTENSION, PHOTO, NOTES, REPORTS_TO, PHOTO_PATH) VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1966-01-27', '1994-11-15', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452', NULL, 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp');

INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('01581', 'Westboro', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('01730', 'Bedford', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('01833', 'Georgetow', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('02116', 'Boston', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('02139', 'Cambridge', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('02184', 'Braintree', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('02903', 'Providence', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('03049', 'Hollis', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('03801', 'Portsmouth', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('06897', 'Wilton', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('07960', 'Morristown', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('08837', 'Edison', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('10019', 'New York', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('10038', 'New York', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('11747', 'Mellvile', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('14450', 'Fairport', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('19428', 'Philadelphia', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('19713', 'Neward', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('20852', 'Rockville', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('27403', 'Greensboro', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('27511', 'Cary', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('29202', 'Columbia', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('30346', 'Atlanta', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('31406', 'Savannah', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('32859', 'Orlando', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('33607', 'Tampa', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('40222', 'Louisville', 1);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('44122', 'Beachwood', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('45839', 'Findlay', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('48075', 'Southfield', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('48084', 'Troy', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('48304', 'Bloomfield Hills', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('53404', 'Racine', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('55113', 'Roseville', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('55439', 'Minneapolis', 3);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('60179', 'Hoffman Estates', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('60601', 'Chicago', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('72716', 'Bentonville', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('75234', 'Dallas', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('78759', 'Austin', 4);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('80202', 'Denver', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('80909', 'Colorado Springs', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('85014', 'Phoenix', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('85251', 'Scottsdale', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('90405', 'Santa Monica', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('94025', 'Menlo Park', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('94105', 'San Francisco', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('95008', 'Campbell', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('95054', 'Santa Clara', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('95060', 'Santa Cruz', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('98004', 'Bellevue', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('98052', 'Redmond', 2);
INSERT INTO S07.TERRITORIES (TERRITORY_ID, TERRITORY_DESCRIPTION, REGION_ID) VALUES ('98104', 'Seattle', 2);

INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (1, '06897');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (1, '19713');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '01581');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '01730');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '01833');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '02116');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '02139');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '02184');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (2, '40222');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (3, '30346');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (3, '31406');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (3, '32859');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (3, '33607');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (4, '20852');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (4, '27403');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (4, '27511');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '02903');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '07960');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '08837');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '10019');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '10038');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '11747');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (5, '14450');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (6, '85014');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (6, '85251');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (6, '98004');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (6, '98052');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (6, '98104');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '60179');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '60601');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '80202');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '80909');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '90405');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '94025');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '94105');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '95008');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '95054');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (7, '95060');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (8, '19428');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (8, '44122');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (8, '45839');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (8, '53404');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '03049');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '03801');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '48075');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '48084');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '48304');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '55113');
INSERT INTO S07.EMPLOYEE_TERRITORIES (EMPLOYEE_ID, TERRITORY_ID) VALUES (9, '55439');

ALTER TABLE S07.EMPLOYEES ADD CONSTRAINT FK_EMPLOYEES_EMPLOYEES FOREIGN KEY(REPORTS_TO)
REFERENCES S07.EMPLOYEES (EMPLOYEE_ID);

ALTER TABLE S07.EMPLOYEE_TERRITORIES ADD CONSTRAINT FK_EMPLOYEE_TER_EMP FOREIGN KEY(EMPLOYEE_ID)
REFERENCES S07.EMPLOYEES (EMPLOYEE_ID);

ALTER TABLE S07.EMPLOYEE_TERRITORIES ADD CONSTRAINT FK_EMPLOYEE_TER_TER FOREIGN KEY(TERRITORY_ID)
REFERENCES S07.TERRITORIES (TERRITORY_ID);

ALTER TABLE S07.TERRITORIES ADD CONSTRAINT FK_TERRITORIES_REGION FOREIGN KEY(REGION_ID)
REFERENCES S07.REGIONS (REGION_ID);

echo Application installed
