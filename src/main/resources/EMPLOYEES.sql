/*
 Navicat Premium Data Transfer

 Source Server         : localhost_oracle
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : localhost:1521
 Source Schema         : SCOTT

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 03/07/2020 09:14:47
*/


-- ----------------------------
-- Table structure for EMPLOYEES
-- ----------------------------
DROP TABLE "SCOTT"."EMPLOYEES";
CREATE TABLE "SCOTT"."EMPLOYEES" (
  "EMPLOYEE_ID" NUMBER(6,0) NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE),
  "LAST_NAME" VARCHAR2(25 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(25 BYTE) NOT NULL,
  "PHONE_NUMBER" VARCHAR2(20 BYTE),
  "HIRE_DATE" DATE NOT NULL,
  "JOB_ID" VARCHAR2(10 BYTE) NOT NULL,
  "SALARY" NUMBER(8,2),
  "COMMISSION_PCT" NUMBER(2,2),
  "MANAGER_ID" NUMBER(6,0),
  "DEPARTMENT_ID" NUMBER(4,0)
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of EMPLOYEES
-- ----------------------------
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', TO_DATE('1999-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', TO_DATE('2000-01-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', TO_DATE('1987-09-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_ASST', '4400', NULL, '101', '10');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', TO_DATE('1996-02-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'MK_MAN', '13000', NULL, '100', '20');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', TO_DATE('1997-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'MK_REP', '6000', NULL, '201', '20');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', TO_DATE('1994-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'HR_REP', '6500', NULL, '101', '40');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', TO_DATE('1994-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PR_REP', '10000', NULL, '101', '70');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', TO_DATE('1994-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_MGR', '12000', NULL, '101', '110');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', TO_DATE('1994-06-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AC_ACCOUNT', '8300', NULL, '205', '110');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('100', 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('1987-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_PRES', '24000', NULL, NULL, '90');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('1989-09-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('1993-01-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('1990-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '9000', NULL, '102', '60');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('1991-05-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '6000', NULL, '103', '60');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', TO_DATE('1997-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('1998-02-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('1999-02-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'IT_PROG', '4200', NULL, '103', '60');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TO_DATE('1994-08-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_MGR', '12000', NULL, '101', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TO_DATE('1994-08-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '9000', NULL, '108', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('110', 'John', 'Chen', 'JCHEN', '515.124.4269', TO_DATE('1997-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '8200', NULL, '108', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', TO_DATE('1997-09-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '7700', NULL, '108', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', TO_DATE('1998-03-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '7800', NULL, '108', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', TO_DATE('1999-12-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'FI_ACCOUNT', '6900', NULL, '108', '100');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', TO_DATE('1994-12-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_MAN', '11000', NULL, '100', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', TO_DATE('1995-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '3100', NULL, '114', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', TO_DATE('1997-12-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2900', NULL, '114', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', TO_DATE('1997-07-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2800', NULL, '114', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', TO_DATE('1998-11-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2600', NULL, '114', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', TO_DATE('1999-08-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'PU_CLERK', '2500', NULL, '114', '30');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', TO_DATE('1996-07-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '8000', NULL, '100', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', TO_DATE('1997-04-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '8200', NULL, '100', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', TO_DATE('1995-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '7900', NULL, '100', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', TO_DATE('1997-10-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '6500', NULL, '100', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TO_DATE('1999-11-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_MAN', '5800', NULL, '100', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', TO_DATE('1997-07-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3200', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', TO_DATE('1998-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2700', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', TO_DATE('1999-01-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2400', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', TO_DATE('2000-03-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2200', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', TO_DATE('1997-08-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3300', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', TO_DATE('1997-10-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2800', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', TO_DATE('1997-02-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', TO_DATE('1999-04-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2100', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', TO_DATE('1996-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3300', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', TO_DATE('1998-08-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2900', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', TO_DATE('1999-12-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2400', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', TO_DATE('2000-02-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2200', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', TO_DATE('1995-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3600', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', TO_DATE('1997-10-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3200', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('139', 'John', 'Seo', 'JSEO', '650.121.2019', TO_DATE('1998-02-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2700', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', TO_DATE('1998-04-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', TO_DATE('1995-10-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3500', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', TO_DATE('1997-01-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '3100', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', TO_DATE('1998-03-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2600', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', TO_DATE('1998-07-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ST_CLERK', '2500', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', TO_DATE('1996-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '14000', '0.4', '100', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', TO_DATE('1997-01-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '13500', '0.3', '100', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', TO_DATE('1997-03-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '12000', '0.3', '100', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', TO_DATE('1999-10-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '11000', '0.3', '100', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', TO_DATE('2000-01-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_MAN', '10500', '0.2', '100', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', TO_DATE('1997-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.3', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', TO_DATE('1997-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.25', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', TO_DATE('1997-08-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9000', '0.25', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', TO_DATE('1998-03-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8000', '0.2', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', TO_DATE('1998-12-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7500', '0.2', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', TO_DATE('1999-11-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.15', '145', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', TO_DATE('1996-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.35', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', TO_DATE('1996-03-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.35', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', TO_DATE('1996-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9000', '0.35', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', TO_DATE('1997-03-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8000', '0.3', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', TO_DATE('1997-12-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7500', '0.3', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', TO_DATE('1998-11-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.25', '146', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', TO_DATE('1997-11-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10500', '0.25', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', TO_DATE('1999-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9500', '0.15', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', TO_DATE('2000-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7200', '0.1', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', TO_DATE('2000-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6800', '0.1', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', TO_DATE('2000-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6400', '0.1', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', TO_DATE('2000-04-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6200', '0.1', '147', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', TO_DATE('1997-03-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '11500', '0.25', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', TO_DATE('1998-03-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '10000', '0.2', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', TO_DATE('1998-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '9600', '0.2', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', TO_DATE('1999-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7400', '0.15', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', TO_DATE('1999-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7300', '0.15', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', TO_DATE('2000-04-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6100', '0.1', '148', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', TO_DATE('1996-05-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '11000', '0.3', '149', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', TO_DATE('1997-03-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8800', '0.25', '149', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', TO_DATE('1998-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8600', '0.2', '149', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', TO_DATE('1998-04-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '8400', '0.2', '149', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', TO_DATE('1999-05-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '7000', '0.15', '149', NULL);
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', TO_DATE('2000-01-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SA_REP', '6200', '0.1', '149', '80');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', TO_DATE('1998-01-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3200', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', TO_DATE('1998-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3100', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', TO_DATE('1999-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2500', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', TO_DATE('2000-02-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2800', NULL, '120', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', TO_DATE('1996-01-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4200', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', TO_DATE('1997-02-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4100', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', TO_DATE('1998-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3400', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', TO_DATE('1999-02-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3000', NULL, '121', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', TO_DATE('1997-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3800', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', TO_DATE('1997-08-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3600', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', TO_DATE('1998-07-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2900', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', TO_DATE('1999-12-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2500', NULL, '122', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', TO_DATE('1996-02-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '4000', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', TO_DATE('1997-03-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3900', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', TO_DATE('1998-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3200', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', TO_DATE('1999-03-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '2800', NULL, '123', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', TO_DATE('1998-04-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3100', NULL, '124', '50');
INSERT INTO "SCOTT"."EMPLOYEES" VALUES ('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', TO_DATE('1998-05-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'SH_CLERK', '3000', NULL, '124', '50');

-- ----------------------------
-- Primary Key structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID");

-- ----------------------------
-- Uniques structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_NN" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_HIRE_DATE_NN" CHECK ("HIRE_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_NN" CHECK ("JOB_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_LAST_NAME_NN" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table EMPLOYEES
-- ----------------------------
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID") REFERENCES "SCOTT"."DEPARTMENTS" ("DEPARTMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID") REFERENCES "SCOTT"."JOBS" ("JOB_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."EMPLOYEES" ADD CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID") REFERENCES "SCOTT"."EMPLOYEES" ("EMPLOYEE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
