WITH
    cur_user AS (SELECT /*+ materialize */
                        usr_id
                       ,longitude 
                       ,latitude 
                       ,birthday
                   FROM bandfinder.users
                  WHERE usr_id = :id_token)
    ,filter_settings AS (SELECT /*+ materialize */
                                :distance_radius    as max_distance
                               ,:instruments_filter as instruments 
                           FROM dual)
  SELECT usr_data.USR_ID
        ,usr_data.FIRSTNAME 
        ,usr_data.LASTNAME
        ,usr_data.BIRTHDAY
        ,usr_data.LATITUDE
        ,usr_data.LONGITUDE
        ,usr_data.DISTANCE
        ,usr_data.RATING
        ,(SELECT LISTAGG(instr_code || (' (' || play_level || ')'), ', ')
          WITHIN GROUP (ORDER BY play_level)
            FROM user_instruments list_usr_instr
           WHERE list_usr_instr.usr_id = usr_data.usr_id) as playing_instruments
	FROM (SELECT usr.*
                ,bandfinder.distance(  Lat1 => (SELECT latitude  FROM cur_user)
                                      ,Lon1 => (SELECT longitude FROM cur_user)
                                      ,Lat2 => usr.latitude
                                      ,Lon2 => usr.longitude) as distance
                ,bandfinder.performance_rating(p_usr_id1 => (SELECT usr_id  FROM cur_user)
                                              ,p_usr_id2 => usr.usr_id) as rating
            FROM bandfinder.users usr
            WHERE usr.usr_id != (SELECT usr_id FROM cur_user) 
        ) usr_data
   WHERE usr_data.distance <= (SELECT max_distance FROM filter_settings)
     AND usr_data.usr_id IN ( SELECT usr_id
                                FROM bandfinder.user_instruments
                               WHERE INSTR((SELECT instruments FROM filter_settings), instr_code) > 0
                                  OR (SELECT instruments FROM filter_settings) IS NULL)
  ORDER BY rating DESC