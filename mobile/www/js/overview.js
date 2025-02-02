function contact_whatsapp(phonenumber)
{
  null;
}

function getAge(dateString) {
    var dateParts = dateString.split(".");
    var birthDate = new Date(+dateParts[2], dateParts[1] - 1, +dateParts[0]);
    var today = new Date();
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}

function open_readonly_profile(usr_id)
{
  window.sessionStorage.setItem("usr_id", usr_id);
  window.location="./profile_readonly.html";
}

function build_overview_html_body(users)
{
  //console.log(users);
  var html_string = "";

  for (var i = 0; i < users.length; i++) {
    html_string = html_string +
    '<div class="col">' +
      '<div class="card shadow-sm">' +
        '<img class= "card-img-top" onclick="open_readonly_profile('+ users[i].usr_id +')" focusable="false" src = "' + 'data:image/jpeg;base64,' + users[i].base64string +'"></img>'+
        '<div class="card-body">'+
          '<p class="card-text">'+ users[i].firstname +' '+ users[i].lastname +' ('+ getAge(users[i].birthday) + ')<br />' +users[i].playing_instruments +'</p>'+
          '<div class="d-flex justify-content-between align-items-center">'+
            '<div class="btn-group">'+
              '<!--<button type="button" onclick="contact_whatsapp('+ users[i].phonenumber +')" class="btn btn-sm btn-outline-secondary">Contact Me! <i class="fa fa-whatsapp" aria-hidden="true"></i></button> -->' +
              '<a class="hyperlink_button" href="whatsapp://send?phone=+43'+ users[i].phonenumber +'">WhatsApp <i class="fa fa-whatsapp" aria-hidden="true"></i></a>'+
              '<a class="hyperlink_button" href="sms:+43'+ users[i].phonenumber +'">SMS <i class="fa fa-envelope" aria-hidden="true"></i></a>' +
              '<a class="hyperlink_button" href="tel:+43'+ users[i].phonenumber +'">Call <i class="fa fa-phone" aria-hidden="true"></i></a>'+
            '</div>'+
            '<small class="text-muted">'+ users[i].distance +' km</small>'+
          '</div>'+
        '</div>'+
      '</div>'+
    '</div>';
}

  document.getElementById('user_container').innerHTML = html_string;
}

document.addEventListener('DOMContentLoaded', function(event) {
   get_users();
})
