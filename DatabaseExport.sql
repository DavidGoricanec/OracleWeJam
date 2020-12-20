--------------------------------------------------------
--  File created - Sunday-December-20-2020   
--------------------------------------------------------
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
	"LONGITUDE" NUMBER
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
Insert into BANDFINDER.INSTRUMENTS (NAME,INSTR_CODE) values ('Trumpet','TRPT');
REM INSERTING into BANDFINDER.PLAY_LEVEL_STR
SET DEFINE OFF;
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (10,'Beginner');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (20,'Intermediate');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (30,'Advanced');
Insert into BANDFINDER.PLAY_LEVEL_STR (PLAY_LEVEL,DESCRIPTION) values (40,'Professional');
REM INSERTING into BANDFINDER.USERS
SET DEFINE OFF;
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (3,'TestFirstname','TestLastname',to_date('23.01.96','DD.MM.RR'),46.8282,15.2087);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (21,'Manuel','Mune',to_date('07.02.93','DD.MM.RR'),40.73061,-73.935242);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (22,'Danial','Hard',to_date('09.10.95','DD.MM.RR'),40.73061,-73.935242);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (23,'Michelle','Cloud',to_date('29.06.98','DD.MM.RR'),40.73061,-73.935242);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (1,'David','Goricanec',to_date('23.07.96','DD.MM.RR'),46.8883,15.5132);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (5,'Herbert','Mauer',to_date('05.12.90','DD.MM.RR'),47.0667,15.45);
Insert into BANDFINDER.USERS (USR_ID,FIRSTNAME,LASTNAME,BIRTHDAY,LATITUDE,LONGITUDE) values (4,'Sabrina','Haidinger',to_date('23.04.97','DD.MM.RR'),46.9653,15.4803);
REM INSERTING into BANDFINDER.USER_INSTRUMENTS
SET DEFINE OFF;
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (16,5,'XYP',to_date('01.06.20','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (1,1,'GTR',to_date('01.12.16','DD.MM.RR'),20);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (2,4,'PNO',to_date('01.10.10','DD.MM.RR'),10);
Insert into BANDFINDER.USER_INSTRUMENTS (USR_INS_ID,USR_ID,INSTR_CODE,STARTED_PLAYING,PLAY_LEVEL) values (3,1,'PNO',to_date('01.02.20','DD.MM.RR'),10);
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
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."EMP" ADD FOREIGN KEY ("MGR")
	  REFERENCES "BANDFINDER"."EMP" ("EMPNO") ENABLE;
  ALTER TABLE "BANDFINDER"."EMP" ADD FOREIGN KEY ("DEPTNO")
	  REFERENCES "BANDFINDER"."DEPT" ("DEPTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_INSTRUMENTS
--------------------------------------------------------

  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "FK_INSTR_CODE" FOREIGN KEY ("INSTR_CODE")
	  REFERENCES "BANDFINDER"."INSTRUMENTS" ("INSTR_CODE") ENABLE;
  ALTER TABLE "BANDFINDER"."USER_INSTRUMENTS" ADD CONSTRAINT "FK_USR_ID" FOREIGN KEY ("USR_ID")
	  REFERENCES "BANDFINDER"."USERS" ("USR_ID") ENABLE;
