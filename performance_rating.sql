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

