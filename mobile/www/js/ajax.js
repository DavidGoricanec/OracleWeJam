var cloud_url = "https://vlthasl7otj6fl7-db202010251751.adb.eu-frankfurt-1.oraclecloudapps.com/ords/bandfinder/users";


function set_session(e) {

  var data;
  var email = document.getElementById("inputEmail").value;
  var pw = document.getElementById("inputPassword").value;

  if (email == "" || email == null || pw == "" || pw == null)
  {
    alert("Please fill out both fields!");
  }
  else {
    var request = new XMLHttpRequest();

    request.open("POST",cloud_url+"/auth", false);
    request.setRequestHeader("email",email);
    request.setRequestHeader("password",pw);
    request.addEventListener('load', function(event) {
       if (request.status >= 200 && request.status < 300) {
          data = JSON.parse(request.responseText);
          if(data.status == 200)
          {
              e.preventDefault();
              //Login successfull
              window.localStorage.setItem("session_key", data.session_key);
              window.localStorage.setItem("session_expire_date", data.session_expire_date);
              window.location="./overview.html";
          }
          else {
            alert(data.err_msg);
          }
       } else {
          alert(request.responseText);
       }
    });
    request.send();
  }
}

function registrate_ajax(firstName, lastName, email, birthday, latitude, longitude, password)
{
  var request = new XMLHttpRequest();

  request.open("PUT",cloud_url+"/auth", false);
  request.setRequestHeader("firstname",firstName);
  request.setRequestHeader("lastname",lastName);
  request.setRequestHeader("birthday",birthday);
  request.setRequestHeader("latitude",latitude);
  request.setRequestHeader("longitude",longitude);
  request.setRequestHeader("email",email);
  request.setRequestHeader("password",password);
  request.addEventListener('load', function(event) {
     if (request.status >= 200 && request.status < 300) {
        data = JSON.parse(request.responseText);
        if(data.status == 200)
        {
            //Login successfull
            window.localStorage.setItem("session_key", data.session_key);
            window.localStorage.setItem("session_expire_date", data.session_expire_date);
            //window.sessionStorage.setItem("firstname", firstName);
            //window.sessionStorage.setItem("lastname", lastName);
            window.location="./registration_part2.html";
        }
        else {
          alert(data.err_msg);
        }
     } else {
        alert(request.responseText);
     }
  });
  request.send();
}

function get_users()
{
  var request = new XMLHttpRequest();

  request.open("GET",cloud_url+"/search_results", true);
  request.setRequestHeader("distance_radius",50);
  request.setRequestHeader("session_key",window.localStorage.getItem("session_key"));
  //request.setRequestHeader("session_key","B81D4F6086473352E0538D10000A0504");
  request.setRequestHeader("intruments_filter",null);
  request.addEventListener('load', function(event) {
     if (request.status >= 200 && request.status < 300) {
        data = JSON.parse(request.responseText);
        build_overview_html_body(data.items);
     } else {
        alert(request.responseText);
     }
  });
  request.send();
}

function upload_media(is_profile_picture, title, content_type, content)
{
  var request = new XMLHttpRequest();

  request.open("POST",cloud_url+"/media", true);
  request.setRequestHeader("is_profile_picture",is_profile_picture);
  request.setRequestHeader("session_key",window.localStorage.getItem("session_key"));
  request.setRequestHeader("title",title);
  request.setRequestHeader("content_type",content_type);
  request.addEventListener('load', function(event) {
     if (request.status >= 200 && request.status < 300) {
        data = JSON.parse(request.responseText);
        if(data.status == 200)
        {
            alert('image upload success');
        }
        else {
          alert(data.err_msg);
        }
     } else {
        alert(request.responseText);
     }
  });
  request.send(content);
}

function get_instruments()
{
  var request = new XMLHttpRequest();

  request.open("GET",cloud_url+"/instruments", true);
  request.addEventListener('load', function(event) {
     if (request.status >= 200 && request.status < 300) {
        data = JSON.parse(request.responseText);
        fill_insturment_selections(data.items);
     } else {
        alert(request.responseText);
     }
  });
  request.send();
}

function put_insturment(array_string)
{
  var request = new XMLHttpRequest();

  request.open("PUT",cloud_url+"/instruments", true);
  request.setRequestHeader("array_string",array_string);
  request.setRequestHeader("session_key",window.localStorage.getItem("session_key"));
  request.addEventListener('load', function(event) {
     if (request.status >= 200 && request.status < 300) {
        data = JSON.parse(request.responseText);
        if (data.status == 200)
        {
          
          window.location="./overview.html";
        }
        else {
          alert(data.err_msg);
        }
     } else {
        alert(request.responseText);
     }
  });
  request.send();
}


function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2)
        month = '0' + month;
    if (day.length < 2)
        day = '0' + day;

    return [day, month, year].join('.');
}
