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
              window.location.href="./overview.html";
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
