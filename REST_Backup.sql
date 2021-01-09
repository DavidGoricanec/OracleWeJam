-- Generated by Oracle SQL Developer REST Data Services 19.1.0.094.2042
-- Exported REST Definitions from ORDS Schema Version 20.3.1.r3321735
-- Schema: BANDFINDER   Date: Sat Jan 09 03:18:24 CET 2021
--
BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'BANDFINDER',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'bandfinder',
      p_auto_rest_auth      => FALSE);    

  ORDS.DEFINE_MODULE(
      p_module_name    => 'BANDFINDER',
      p_base_path      => '/users/',
      p_items_per_page =>  0,
      p_status         => 'PUBLISHED',
      p_comments       => NULL);      
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'auth',
      p_priority       => 9,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'auth',
      p_method         => 'PUT',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'BEGIN
    create_new_user (
        p_firstname  => :firstname,
        p_lastname   => :lastname,
        p_birthday   => TO_DATE(:birthday,''DD.MM.YYYY''),
        p_latitude   => :latitude,
        p_longitude  => :longitude,
        p_email      => :email,
        p_password   => :password,
        p_session_key         => :session_key,
        p_session_expire_date => :session_expire_date);

    :status := 200;
EXCEPTION
    WHEN others THEN
    :status := 400;
    :err_msg := ''Error creating user'';
END;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'birthday',
      p_bind_variable_name => 'birthday',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'email',
      p_bind_variable_name => 'email',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'err_msg',
      p_bind_variable_name => 'err_msg',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'firstname',
      p_bind_variable_name => 'firstname',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'lastname',
      p_bind_variable_name => 'lastname',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'latitude',
      p_bind_variable_name => 'latitude',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'longitude',
      p_bind_variable_name => 'longitude',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'password',
      p_bind_variable_name => 'password',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'session_expire_date',
      p_bind_variable_name => 'session_expire_date',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'TIMESTAMP',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'session_key',
      p_bind_variable_name => 'session_key',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'PUT',
      p_name               => 'status',
      p_bind_variable_name => 'status',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'auth',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
' 
 BEGIN
  create_new_session (
                        p_email               =>  :email,
                        p_password            =>  :password,
                        p_session_key         => :session_key,
                        p_session_expire_date => :session_expire_date
                     );
  :status := 200;
 EXCEPTION
    WHEN OTHERS THEN
     :status := 400;
     :err_msg := ''Error: Please try a difffernt email+password combination'';
end;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'email',
      p_bind_variable_name => 'email',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'err_msg',
      p_bind_variable_name => 'err_msg',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'password',
      p_bind_variable_name => 'password',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'session_expire_date',
      p_bind_variable_name => 'session_expire_date',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'TIMESTAMP',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'session_key',
      p_bind_variable_name => 'session_key',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'auth',
      p_method             => 'POST',
      p_name               => 'status',
      p_bind_variable_name => 'status',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'instruments',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'instruments',
      p_method         => 'PUT',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
' 
DECLARE
   lv_list nt_split_result := nt_split_result();
   v_instr_code user_instruments.instr_code%TYPE;
   v_play_level user_instruments.play_level%TYPE;
   v_started_playing user_instruments.started_playing%TYPE ;
   BEGIN
     FOR i IN
     (SELECT trim(regexp_substr(:array_string, ''[^;]+'', 1, LEVEL)) l
     FROM dual
       CONNECT BY LEVEL <= regexp_count(:array_string, '';'')+1
     )
     LOOP
       lv_list := f_split_string_into_array(i.l,'','');
       v_instr_code := lv_list(1);
       v_play_level := lv_list(2);
       v_started_playing := TO_DATE(lv_list(3), ''DD.MM.YYYY'');
       
       upsert_user_instruemnts(p_session_key => :session_key
                              ,p_instr_code => v_instr_code
                              ,p_play_level => v_play_level
                              ,p_started_playing => v_started_playing);
     END LOOP;

     :status := 200;

     EXCEPTION
     WHEN OTHERS THEN
       :status := 400;
       :err_msg := SQLERRM;
   END;
'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'instruments',
      p_method             => 'PUT',
      p_name               => 'array_string',
      p_bind_variable_name => 'array_string',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'instruments',
      p_method             => 'PUT',
      p_name               => 'err_msg',
      p_bind_variable_name => 'err_msg',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'instruments',
      p_method             => 'PUT',
      p_name               => 'session_key',
      p_bind_variable_name => 'session_key',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'instruments',
      p_method             => 'PUT',
      p_name               => 'status',
      p_bind_variable_name => 'status',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'instruments',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'SELECT ''play_levels'' as name, LISTAGG(description || '';'' || TO_CHAR(play_level), '';'') WITHIN GROUP (ORDER BY play_level) "instr_code"
FROM play_level_str
UNION ALL
SELECT name, instr_code
FROM instruments
'
      );
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'media',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'media',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'declare 
 v_usr_id users.usr_id%TYPE;
begin
  SELECT usr_id
    INTO v_usr_id
    FROM users
   WHERE session_key = :session_key;

 insert into media (title,content_type,base64string, usr_id, is_profile_picture) 
             values  (:title,:content_type,:body, v_usr_id, :is_profile_picture);
 :status := 200;

 exception
 when others then
  :err_msg := SQLERRM;
  :status := 400;
end;'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'content_type',
      p_bind_variable_name => 'content_type',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'err_msg',
      p_bind_variable_name => 'err_msg',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'is_profile_picture',
      p_bind_variable_name => 'is_profile_picture',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'session_key',
      p_bind_variable_name => 'session_key',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'status',
      p_bind_variable_name => 'status',
      p_source_type        => 'RESPONSE',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'media',
      p_method             => 'POST',
      p_name               => 'title',
      p_bind_variable_name => 'title',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'search_results',
      p_priority       => 8,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BANDFINDER',
      p_pattern        => 'search_results',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_items_per_page =>  0,
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'WITH
    cur_user AS (SELECT /*+ materialize */
                        usr_id
                       ,longitude 
                       ,latitude 
                       ,birthday
                   FROM bandfinder.users
                  WHERE session_key = :session_key
                    AND session_expire_date >= sysdate)
    ,filter_settings AS (SELECT /*+ materialize */
                                :distance_radius    as max_distance
                               ,:instruments_filter as instruments 
                           FROM dual)
  SELECT usr_data.USR_ID
        ,usr_data.FIRSTNAME 
        ,usr_data.LASTNAME
        ,TO_CHAR(usr_data.BIRTHDAY, ''DD.MM.YYYY'') as birthday
        ,usr_data.LATITUDE
        ,usr_data.LONGITUDE
        ,ROUND(usr_data.DISTANCE) as distance
        ,usr_data.RATING
        ,(SELECT LISTAGG(instr_code || ('' ('' || play_level || '')''), '', '')
          WITHIN GROUP (ORDER BY play_level)
            FROM user_instruments list_usr_instr
           WHERE list_usr_instr.usr_id = usr_data.usr_id) as playing_instruments
        ,base64string
        ,picture_title
        ,content_type
	FROM (SELECT usr.*
                ,med.base64string
                ,med.title as picture_title
                ,med.content_type
                ,bandfinder.distance(  Lat1 => (SELECT latitude  FROM cur_user)
                                      ,Lon1 => (SELECT longitude FROM cur_user)
                                      ,Lat2 => usr.latitude
                                      ,Lon2 => usr.longitude) as distance
                ,bandfinder.performance_rating(p_usr_id1 => (SELECT usr_id  FROM cur_user)
                                              ,p_usr_id2 => usr.usr_id) as rating
            FROM bandfinder.users usr
            INNER JOIN bandfinder.media med
                    ON (usr.usr_id = med.usr_id AND med.is_profile_picture = ''Y'')
            WHERE usr.usr_id != (SELECT usr_id FROM cur_user) 
        ) usr_data
   WHERE usr_data.distance <= (SELECT max_distance FROM filter_settings)
     AND usr_data.usr_id IN ( SELECT usr_id
                                FROM bandfinder.user_instruments
                               WHERE INSTR((SELECT instruments FROM filter_settings), instr_code) > 0
                                  OR (SELECT instruments FROM filter_settings) IS NULL)
  ORDER BY rating DESC'
      );
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'search_results',
      p_method             => 'GET',
      p_name               => 'Distance_Radius',
      p_bind_variable_name => 'distance_radius',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'search_results',
      p_method             => 'GET',
      p_name               => 'Instruments_Filter',
      p_bind_variable_name => 'instruments_filter',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      
  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BANDFINDER',
      p_pattern            => 'search_results',
      p_method             => 'GET',
      p_name               => 'Session_key',
      p_bind_variable_name => 'session_key',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);      


  COMMIT; 
END;