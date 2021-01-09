--------------------------------------------------------
--  File created - Saturday-January-09-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type NT_SPLIT_RESULT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "BANDFINDER"."NT_SPLIT_RESULT" IS TABLE OF VARCHAR2(4000)

/
--------------------------------------------------------
--  DDL for Sequence DEPT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BANDFINDER"."DEPT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence EMP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BANDFINDER"."EMP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."DEPT" 
   (	"DEPTNO" NUMBER(2,0), 
	"DNAME" VARCHAR2(14 BYTE) COLLATE "USING_NLS_COMP", 
	"LOC" VARCHAR2(13 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."EMP" 
   (	"EMPNO" NUMBER(4,0), 
	"ENAME" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"JOB" VARCHAR2(9 BYTE) COLLATE "USING_NLS_COMP", 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table INSTRUMENTS
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."INSTRUMENTS" 
   (	"NAME" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"INSTR_CODE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table MEDIA
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."MEDIA" 
   (	"MED_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USR_ID" NUMBER, 
	"TITLE" VARCHAR2(200 CHAR) COLLATE "USING_NLS_COMP", 
	"CONTENT_TYPE" VARCHAR2(50 CHAR) COLLATE "USING_NLS_COMP", 
	"IS_PROFILE_PICTURE" VARCHAR2(1 CHAR) COLLATE "USING_NLS_COMP", 
	"BASE64STRING" CLOB COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" 
 LOB ("BASE64STRING") STORE AS SECUREFILE (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PLAY_LEVEL_STR
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."PLAY_LEVEL_STR" 
   (	"PLAY_LEVEL" NUMBER, 
	"DESCRIPTION" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."USERS" 
   (	"USR_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"FIRSTNAME" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"LASTNAME" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"BIRTHDAY" DATE, 
	"LATITUDE" NUMBER, 
	"LONGITUDE" NUMBER, 
	"SESSION_KEY" VARCHAR2(100 CHAR) COLLATE "USING_NLS_COMP", 
	"SESSION_EXPIRE_DATE" DATE, 
	"EMAIL" VARCHAR2(500 CHAR) COLLATE "USING_NLS_COMP", 
	"PASSWORD" VARCHAR2(500 CHAR) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Table USER_INSTRUMENTS
--------------------------------------------------------

  CREATE TABLE "BANDFINDER"."USER_INSTRUMENTS" 
   (	"USR_INS_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USR_ID" NUMBER, 
	"INSTR_CODE" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP", 
	"STARTED_PLAYING" DATE, 
	"PLAY_LEVEL" NUMBER
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 COLUMN STORE COMPRESS FOR QUERY HIGH ROW LEVEL LOCKING LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for View GET_BEST_USERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "BANDFINDER"."GET_BEST_USERS" ("USR_ID", "FIRSTNAME", "LASTNAME", "BIRTHDAY", "LATITUDE", "LONGITUDE", "DISTANCE", "AGE_DIFF") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  WITH
    
    cur_user AS (SELECT /*+ materialize */
                        usr_id
                       ,longitude 
                       ,latitude 
                       ,birthday
                   FROM users
                  WHERE usr_id = 1)
    ,filter_settings AS (SELECT 50        as max_distance
                               ,'GTR,PNO' as instruments 
                           FROM dual)
  SELECT "USR_ID","FIRSTNAME","LASTNAME","BIRTHDAY","LATITUDE","LONGITUDE","DISTANCE","AGE_DIFF"
	FROM (SELECT usr.*
                ,bandfinder.distance(  Lat1 => (SELECT latitude  FROM cur_user)
                                      ,Lon1 => (SELECT longitude FROM cur_user)
                                      ,Lat2 => usr.latitude
                                      ,Lon2 => usr.longitude) as distance
                ,ABS(birthday - (SELECt birthday FROM cur_user))/365 as age_diff
            FROM bandfinder.users usr
            WHERE usr.usr_id != (SELECT usr_id FROM cur_user) 
        )
   WHERE distance <= (SELECT max_distance FROM filter_settings)
     AND usr_id IN ( SELECT usr_id
                       FROM bandfinder.user_instruments
                      WHERE INSTR((SELECT instruments FROM filter_settings), instr_code) > 0
                         OR instr_code IS NULL)
  ORDER BY age_diff
;
REM INSERTING into BANDFINDER.DEPT
SET DEFINE OFF;
Insert into BANDFINDER.DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into BANDFINDER.DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into BANDFINDER.DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into BANDFINDER.DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');
REM INSERTING into BANDFINDER.EMP
SET DEFINE OFF;
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null,to_date('17.11.81','DD.MM.RR'),5000,null,10);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839,to_date('01.05.81','DD.MM.RR'),2850,null,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839,to_date('09.06.81','DD.MM.RR'),2450,null,10);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839,to_date('02.04.81','DD.MM.RR'),2975,null,20);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,'SCOTT','ANALYST',7566,to_date('09.12.82','DD.MM.RR'),3000,null,20);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,'FORD','ANALYST',7566,to_date('03.12.81','DD.MM.RR'),3000,null,20);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902,to_date('17.12.80','DD.MM.RR'),800,null,20);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698,to_date('20.02.81','DD.MM.RR'),1600,300,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698,to_date('22.02.81','DD.MM.RR'),1250,500,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698,to_date('28.09.81','DD.MM.RR'),1250,1400,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698,to_date('08.09.81','DD.MM.RR'),1500,0,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,'ADAMS','CLERK',7788,to_date('12.01.83','DD.MM.RR'),1100,null,20);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698,to_date('03.12.81','DD.MM.RR'),950,null,30);
Insert into BANDFINDER.EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782,to_date('23.01.82','DD.MM.RR'),1300,null,10);
REM INSERTING into BANDFINDER.INSTRUMENTS
SET DEFINE OFF;
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Guitar','GTR');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Piano','PNO');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Violin','VLN');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Saxophone','SXPN');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Drums','DRM');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Xylophone','XYP');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Flute','FLT');
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Trumpet','TRPT');
REM INSERTING into BANDFINDER.MEDIA
SET DEFINE OFF;
Insert into BANDFINDER.MEDIA (MED_ID,USR_ID,TITLE,CONTENT_TYPE,IS_PROFILE_PICTURE) values (25,23,'test','image/jpeg','Y');
Insert into BANDFINDER.MEDIA (MED_ID,USR_ID,TITLE,CONTENT_TYPE,IS_PROFILE_PICTURE) values (26,1,'test','image/jpeg','Y');
Insert into BANDFINDER.MEDIA (MED_ID,USR_ID,TITLE,CONTENT_TYPE,IS_PROFILE_PICTURE) values (27,4,'test','image/jpeg','Y');
Insert into BANDFINDER.MEDIA (MED_ID,USR_ID,TITLE,CONTENT_TYPE,IS_PROFILE_PICTURE) values (28,5,'test','image/jpeg','Y');
REM INSERTING into BANDFINDER.PLAY_LEVEL_STR
SET DEFINE OFF;
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (10,'Beginner');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (20,'Intermediate');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (30,'Advanced');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (40,'Professional');
REM INSERTING into BANDFINDER.USERS
SET DEFINE OFF;
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (3,'TestFirstname','TestLastname',to_date('23.01.96','DD.MM.RR'),46.8282,15.2087,null,null,'1.1@email.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (63,'Sangina','Haidinger',to_date('06.01.07','DD.MM.RR'),47.0886344,15.4161392,'B8430AE1D2C02279E0538D10000A95FF',to_date('07.01.21','DD.MM.RR'),'sangi@hub.com','1278');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (81,'d','d',to_date('30.12.20','DD.MM.RR'),48.108076999999994,15.804955800000002,'B8693FBECC1F710EE0538C10000A0D0A',to_date('09.01.21','DD.MM.RR'),'d@d.com','d');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (101,'Pic','Pic',to_date('14.01.21','DD.MM.RR'),46.8126665,15.2389207,'B86D7F37479C79D3E0538C10000A7B05',to_date('10.01.21','DD.MM.RR'),'pic.ht@dz.vh','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (105,'H','I',to_date('22.01.21','DD.MM.RR'),46.8126171,15.2389104,'B86DB789866591D7E0538C10000A6FF2',to_date('10.01.21','DD.MM.RR'),'tu.hg@gh.com','23gg');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (113,'H','J',to_date('15.01.21','DD.MM.RR'),46.8126585,15.2389158,'B86DB789866691D7E0538C10000A6FF2',to_date('10.01.21','DD.MM.RR'),'fhu.vj@fz.com','256');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (114,'H','G',to_date('09.01.21','DD.MM.RR'),46.8126652,15.2389134,'B86DB789866791D7E0538C10000A6FF2',to_date('10.01.21','DD.MM.RR'),'h.b@gg.com','h');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (21,'Manuel','Mune',to_date('07.02.93','DD.MM.RR'),40.73061,-73.935242,null,null,'2.2@email.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (22,'Danial','Hard',to_date('09.10.95','DD.MM.RR'),40.73061,-73.935242,null,null,'3.1@email.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (23,'Michelle','Cloud',to_date('29.06.98','DD.MM.RR'),40.73061,-73.935242,'B86E5EE3821E3E22E0538C10000ACDB0',to_date('10.01.21','DD.MM.RR'),'4.1@email.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (62,'TestUser','LastName',to_date('27.01.21','DD.MM.RR'),47.0886596,15.415957400000002,'B84255778D153180E0538D10000A07F9',to_date('07.01.21','DD.MM.RR'),'sd@fw.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (1,'David','Goricanec',to_date('23.07.96','DD.MM.RR'),46.8883,15.5132,'B86F2F22584A568BE0538C10000A51F5',to_date('10.01.21','DD.MM.RR'),'5.1@email.com','1234A');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (102,'D','D',to_date('15.01.21','DD.MM.RR'),46.8126208,15.238913,'B86D8EADEB63B804E0538C10000A1E96',to_date('10.01.21','DD.MM.RR'),'ft.j@j.com','45');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (5,'Herbert','Mauer',to_date('05.12.90','DD.MM.RR'),47.0667,15.45,null,null,'6.1@email.com','1234');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (103,'4','6',to_date('21.01.21','DD.MM.RR'),46.8125953,15.2389299,'B86D8EADEB64B804E0538C10000A1E96',to_date('10.01.21','DD.MM.RR'),'gh6.jh@h.j.com','45z');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (106,'Pihh','Gjk',to_date('14.01.21','DD.MM.RR'),46.8126167,15.2389044,'B86DC47518198C26E0538C10000A9810',to_date('10.01.21','DD.MM.RR'),'gu.j@gj.com','236h');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (107,'D','H',to_date('13.01.21','DD.MM.RR'),46.8126152,15.2389053,'B86DC475181A8C26E0538C10000A9810',to_date('10.01.21','DD.MM.RR'),'hu.j@gz.com','134');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (108,'J','H',to_date('21.01.21','DD.MM.RR'),46.8126186,15.2388911,'B86DC475181B8C26E0538C10000A9810',to_date('10.01.21','DD.MM.RR'),'f.g@f.t.com','2');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (109,'d','d',to_date('30.12.20','DD.MM.RR'),48.108076999999994,15.804955800000002,'B86DC475181C8C26E0538C10000A9810',to_date('10.01.21','DD.MM.RR'),'d.fg@gmc.coom','3');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (111,'H','H',to_date('21.01.21','DD.MM.RR'),46.8126171,15.2389108,'B86DC475181D8C26E0538C10000A9810',to_date('10.01.21','DD.MM.RR'),'h.b gru@jj.com','46');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (115,'Hh','Vh',to_date('22.01.21','DD.MM.RR'),46.8126188,15.2389084,'B86E323BA5A2B4CFE0538C10000A7B8C',to_date('10.01.21','DD.MM.RR'),'gh.jj@zu.com','134');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (82,'D','D',to_date('23.01.21','DD.MM.RR'),46.8129143,15.2386233,'B8696CBD961D6A38E0538C10000A63D3',to_date('09.01.21','DD.MM.RR'),'c.c@v.com','133');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (110,'r','r',to_date('24.01.21','DD.MM.RR'),46.8129254,15.238799400000001,'B86DF2EC136E1086E0538C10000A6707',to_date('10.01.21','DD.MM.RR'),'d.fg@gmc.coomrr','324');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (112,'G','H',to_date('22.01.21','DD.MM.RR'),46.8137465,15.2375282,'B86DF2EC136F1086E0538C10000A6707',to_date('10.01.21','DD.MM.RR'),'g.j@hj.com','34h');
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE,SESSION_KEY,SESSION_EXPIRE_DATE,EMAIL,PASSWORD) values (4,'Sabrina','Haidinger',to_date('23.04.97','DD.MM.RR'),46.9653,15.4803,null,null,'7.1@email.com','1234');
REM INSERTING into BANDFINDER.USER_INSTRUMENTS
SET DEFINE OFF;
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (16,5,'XYP',to_date('01.06.20','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (2,4,'PNO',to_date('01.10.10','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (23,1,'SXPN',to_date('12.01.21','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (24,62,'VLN',to_date('12.01.21','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (4,3,'XYP',to_date('01.12.08','DD.MM.RR'),40);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (5,3,'TRPT',to_date('01.08.19','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (6,5,'DRM',to_date('01.04.17','DD.MM.RR'),30);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (7,5,'VLN',to_date('01.06.17','DD.MM.RR'),30);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (8,5,'GTR',to_date('01.03.20','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (9,21,'SXPN',to_date('01.11.00','DD.MM.RR'),40);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (10,22,'PNO',to_date('01.11.00','DD.MM.RR'),40);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (11,22,'DRM',to_date('01.01.08','DD.MM.RR'),40);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (12,23,'TRPT',to_date('01.09.10','DD.MM.RR'),20);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (13,23,'VLN',to_date('01.09.10','DD.MM.RR'),40);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (14,4,'GTR',to_date('01.12.18','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (25,63,'FLT',to_date('06.01.81','DD.MM.RR'),40);
--------------------------------------------------------
--  DDL for Index CONSTRAINT_MEDIA_PROFILE_PIC
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."CONSTRAINT_MEDIA_PROFILE_PIC" ON "BANDFINDER"."MEDIA" ("USR_ID", "IS_PROFILE_PICTURE") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index USER_INSTRUMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."USER_INSTRUMENTS_PK" ON "BANDFINDER"."USER_INSTRUMENTS" ("USR_INS_ID") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index UK_USR_ID_INSTR_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."UK_USR_ID_INSTR_CODE" ON "BANDFINDER"."USER_INSTRUMENTS" ("USR_ID", "INSTR_CODE") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index EMAIL_UNIQUE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."EMAIL_UNIQUE" ON "BANDFINDER"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index PK_INSTR
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."PK_INSTR" ON "BANDFINDER"."INSTRUMENTS" ("INSTR_CODE") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."USERS_PK" ON "BANDFINDER"."USERS" ("USR_ID") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Index PLAY_LEVEL_STR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BANDFINDER"."PLAY_LEVEL_STR_PK" ON "BANDFINDER"."PLAY_LEVEL_STR" ("PLAY_LEVEL") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Trigger DEPT_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BANDFINDER"."DEPT_TRG1" 
              before insert on dept
              for each row
              begin
                  if :new.deptno is null then
                      select dept_seq.nextval into :new.deptno from sys.dual;
                 end if;
              end;
/
ALTER TRIGGER "BANDFINDER"."DEPT_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMP_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BANDFINDER"."EMP_TRG1" 
              before insert on emp
              for each row
              begin
                  if :new.empno is null then
                      select emp_seq.nextval into :new.empno from sys.dual;
                 end if;
              end;
/
ALTER TRIGGER "BANDFINDER"."EMP_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Procedure CREATE_NEW_SESSION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BANDFINDER"."CREATE_NEW_SESSION" (
    p_email       IN   users.email%TYPE,
    p_password    IN   users.password%TYPE,
    p_session_key OUT  users.session_key%TYPE,
    p_session_expire_date OUT users.session_expire_date%TYPE
)IS
    v_user users%rowtype;
BEGIN
    BEGIN
        SELECT
            *
        INTO v_user
        FROM
            users
        WHERE
            email = p_email
            AND password = p_password;

    EXCEPTION
        WHEN no_data_found THEN
            RAISE;
    END;

    p_session_key := sys_guid();
    p_session_expire_date := sysdate+1;

    UPDATE users
       SET session_key = p_session_key
          ,session_expire_date = p_session_expire_date
    WHERE usr_id = v_user.usr_id;

END;

/
--------------------------------------------------------
--  DDL for Procedure CREATE_NEW_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BANDFINDER"."CREATE_NEW_USER" (
    p_firstname  IN users.firstname%TYPE,
    p_lastname   IN users.lastname%TYPE,
    p_birthday   IN users.birthday%TYPE,
    p_latitude   IN users.latitude%TYPE,
    p_longitude  IN users.longitude%TYPE,
    p_email      IN users.email%TYPE,
    p_password   IN users.password%TYPE,
    p_session_key         OUT  users.session_key%TYPE,
    p_session_expire_date OUT users.session_expire_date%TYPE
)IS

BEGIN
   INSERT INTO users (firstname,
                      lastname,
                      birthday,
                      latitude,
                      longitude,
                      email,
                      password)
   VALUES(  p_firstname,
            p_lastname,
            p_birthday,
            p_latitude,
            p_longitude,
            p_email,
            p_password);

   create_new_session (
    p_email       =>   p_email,
    p_password    =>   p_password,
    p_session_key =>   p_session_key,
    p_session_expire_date => p_session_expire_date);
END;

/
--------------------------------------------------------
--  DDL for Procedure UPSERT_USER_INSTRUEMNTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BANDFINDER"."UPSERT_USER_INSTRUEMNTS" (p_session_key users.session_key%TYPE
                                                   ,p_instr_code user_instruments.instr_code%TYPE
                                                   ,p_play_level user_instruments.play_level%TYPE
                                                   ,p_started_playing user_instruments.started_playing%TYPE)
IS
    v_cnt NUMBER;
    v_usr_id NUMBER;
BEGIN
    SELECT usr_id
      INTO v_usr_id
      FROM users
     WHERE session_key = p_session_key;

     DELETE FROM user_instruments
     WHERE usr_id = v_usr_id;
     
     SELECT COUNT(*)
       INTO v_cnt
       FROM user_instruments
      WHERE usr_id = v_usr_id
        AND instr_code = p_instr_code;

    IF v_cnt = 0
    THEN
        INSERT INTO user_instruments(usr_id,instr_code,play_level,started_playing)
        VALUES (v_usr_id,p_instr_code, p_play_level,p_started_playing);
    ELSE
    /*
        UPDATE user_instruments
           SET play_level =  p_play_level
              ,started_playing = p_started_playing
        WHERE usr_id = v_usr_id
          AND instr_code = p_instr_code;*/
          RAISE_APPLICATION_ERROR(-21000,'Data found but shouldbe delted');
    END IF;
END;

/
--------------------------------------------------------
--  DDL for Function DISTANCE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "BANDFINDER"."DISTANCE" (Lat1 IN NUMBER,
                                     Lon1 IN NUMBER,
                                     Lat2 IN NUMBER,
                                     Lon2 IN NUMBER,
                                     Radius IN NUMBER DEFAULT 6387.7) RETURN NUMBER IS
 -- Convert degrees to radians
 DegToRad NUMBER := 57.29577951;

BEGIN
  RETURN(NVL(Radius,0) * ACOS((sin(NVL(Lat1,0) / DegToRad) * SIN(NVL(Lat2,0) / DegToRad)) +
        (COS(NVL(Lat1,0) / DegToRad) * COS(NVL(Lat2,0) / DegToRad) *
         COS(NVL(Lon2,0) / DegToRad - NVL(Lon1,0)/ DegToRad))));
END;

/
--------------------------------------------------------
--  DDL for Function F_SPLIT_STRING_INTO_ARRAY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "BANDFINDER"."F_SPLIT_STRING_INTO_ARRAY" 
(pi_str IN VARCHAR2
,pi_delimiter IN VARCHAR2
) RETURN nt_split_result
IS
/** Function extracts parts of a string which are enclosed with an individual delimiter
*
* @author Karsten Besserdich
* @company Besserdich & Redmann GmbH
* @email kb@besserdich-redmann.com
* @URL www.besserdich.com
* @Date 20.08.2015
*
* @param pi_str string to split
* @param pi_delimiter Delimter
* @return Nested Table with extracted strings
*
* You can use this function in PL/SQL and SQL!
*/
lv_list nt_split_result := nt_split_result();
lv_position INTEGER := 1;
lv_result INTEGER := 1;

BEGIN
-- String muss gefüllt sein
IF LENGTH(pi_str) != 0
THEN
LOOP
-- an welcher Stelle tritt Delimter ab der Postition X als nächstes auf
lv_result := INSTR(pi_str,pi_delimiter,lv_position);
-- weitergehen, ggf. mehrere Delimiter hintereinander im String
IF lv_result = lv_position THEN
lv_position := lv_position+1;
CONTINUE;
END IF;
-- einen Teilstring zwischen zwei Delimiter gefunden
IF lv_result > lv_position THEN
lv_list.extend;
lv_list(lv_list.last) := SUBSTR(pi_str,lv_position,lv_result-lv_position);
lv_position := lv_result+1;
CONTINUE;
END IF;
-- was am Ende gefunden und dann beende die Loop
IF lv_result = 0 AND lv_position <= LENGTH(pi_str) THEN
lv_list.extend;
lv_list(lv_list.last) := SUBSTR(pi_str,lv_position,LENGTH(pi_str)-lv_position+1);
EXIT;
END IF;
-- am Ende - beende die Loop
IF lv_position > LENGTH(pi_str) THEN
EXIT;
END IF;
END LOOP;
END IF;

RETURN lv_list;
EXCEPTION
WHEN OTHERS THEN
RAISE;
END f_split_string_into_array;

/
--------------------------------------------------------
--  DDL for Function PERFORMANCE_RATING
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "BANDFINDER"."PERFORMANCE_RATING" (p_usr_id1 IN users.usr_id%TYPE
                                              ,p_usr_id2 IN users.usr_id%TYPE)
RETURN NUMBER
IS
  TYPE same_instr_t IS TABLE OF user_instruments.instr_code%TYPE
            INDEX BY PLS_INTEGER;
  v_same_instr same_instr_t;

  v_rating_instr NUMBER := 0;
  v_rating_age   NUMBER := 0;
BEGIN
    --get same instruments
    SELECT instr_code
      BULK COLLECT INTO v_same_instr
      FROM user_instruments
     WHERE usr_id = p_usr_id1
       AND instr_code IN (SELECT instr_code
                            FROM user_instruments
                           WHERE usr_id = p_usr_id2);

    IF v_same_instr.count > 0
        THEN
        FOR i IN 1 .. v_same_instr.count
        LOOP
          DECLARE
            v_usr1_level NUMBER;
            v_usr2_level NUMBER;
          BEGIN
            SELECT play_level
              INTO v_usr1_level
              FROM user_instruments
             WHERE usr_id = p_usr_id1
               AND instr_code = v_same_instr(i);

            SELECT play_level
              INTO v_usr2_level
              FROM user_instruments
             WHERE usr_id = p_usr_id2
               AND instr_code = v_same_instr(i);

              IF v_usr1_level = v_usr2_level
              THEN
                v_rating_instr := 100;
              ELSIF v_usr1_level BETWEEN v_usr2_level-10 AND v_usr2_level +10
              THEN
                IF v_rating_instr < 80
                THEN
                    v_rating_instr := 80;
                END IF;
              ELSE
                IF v_rating_instr < 60
                THEN
                    v_rating_instr := 60;
                END IF;
              END IF;       
          END;
    	END LOOP;
    ELSE
        BEGIN    
            SELECT 60
              INTO v_rating_instr
              FROM DUAL
             WHERE EXISTS ( SELECT 1
                              FROM user_instruments
                             WHERE usr_id = p_usr_id1
                               AND play_level IN (SELECT play_level
                                                    FROM user_instruments
                                                   WHERE usr_id = p_usr_id2));

        EXCEPTION
            WHEN no_data_found
            THEN
                SELECT 40
                  INTO v_rating_instr
                  FROM DUAL
                 WHERE EXISTS ( SELECT 1
                                  FROM user_instruments
                                 WHERE usr_id = p_usr_id1
                                   AND play_level BETWEEN (SELECT MIN(play_level)-10
                                                             FROM user_instruments
                                                            WHERE usr_id = p_usr_id2) AND (SELECT MAX(play_level)+10
                                                                                            FROM user_instruments
                                                                                            WHERE usr_id = p_usr_id2) );
        END;
    END IF;

    --age diff
    SELECT 100-(
                (TO_NUMBER(
                         TO_CHAR(birthday - (SELECT birthday 
                                                FROM users
                                               WHERE usr_id = p_usr_id2)
                                ))/365)*8)
      INTO v_rating_age
      FROM users
      WHERE usr_id = p_usr_id1;


    RETURN v_rating_age + v_rating_instr;
END;

/
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("USR_ID" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("BIRTHDAY" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("LATITUDE" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("LONGITUDE" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USR_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "BANDFINDER"."USERS" ADD CONSTRAINT "USERS_CHK_SESSION" CHECK ((SESSION_KEY IS NOT NULL AND SESSION_EXPIRE_DATE IS NOT NULL) OR (SESSION_KEY IS  NULL AND SESSION_EXPIRE_DATE IS  NULL)) ENABLE;
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USERS" ADD CONSTRAINT "EMAIL_UNIQUE" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLAY_LEVEL_STR
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."PLAY_LEVEL_STR" ADD CONSTRAINT "PLAY_LEVEL_STR_PK" PRIMARY KEY ("PLAY_LEVEL")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."DEPT" ADD PRIMARY KEY ("DEPTNO")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_INSTRUMENTS
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" MODIFY ("USR_INS_ID" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "USER_INSTRUMENTS_PK" PRIMARY KEY ("USR_INS_ID")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" MODIFY ("USR_ID" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" MODIFY ("INSTR_CODE" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "UK_USR_ID_INSTR_CODE" UNIQUE ("USR_ID", "INSTR_CODE")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."EMP" MODIFY ("EMPNO" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."EMP" ADD PRIMARY KEY ("EMPNO")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUMENTS
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."INSTRUMENTS" MODIFY ("INSTR_CODE" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."INSTRUMENTS" ADD CONSTRAINT "PK_INSTR" PRIMARY KEY ("INSTR_CODE")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDIA
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."MEDIA" MODIFY ("MED_ID" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."MEDIA" MODIFY ("USR_ID" NOT NULL ENABLE);
  ALTER TABLE "BANDFINDER"."MEDIA" ADD CONSTRAINT "CONSTRAINT_MEDIA_PROFILE_PIC" UNIQUE ("USR_ID", "IS_PROFILE_PICTURE")
  USING INDEX PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES "BANDFINDER"."EMP" ("EMPNO") ENABLE;
  ALTER TABLE "BANDFINDER"."EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES "BANDFINDER"."DEPT" ("DEPTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEDIA
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."MEDIA" ADD CONSTRAINT "FK_MEDIA_USR_ID" FOREIGN KEY ("USR_ID")
	  REFERENCES "BANDFINDER"."USERS" ("USR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_INSTRUMENTS
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "FK_INSTR_CODE" FOREIGN KEY ("INSTR_CODE")
	  REFERENCES "BANDFINDER"."INSTRUMENTS" ("INSTR_CODE") ENABLE;
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "FK_USR_ID" FOREIGN KEY ("USR_ID")
	  REFERENCES "BANDFINDER"."USERS" ("USR_ID") ENABLE;
