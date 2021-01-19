function contact_whatsapp(phonenumber)
{
  null;
}

function build_overview_html_body(users)
{
  //console.log(users);
  var html_string = "";

  for (var i = 0; i < users.length; i++) {
    html_string = html_string +
    '<div class="col">' +
      '<div class="card shadow-sm">' +
        '<img class= "card-img-top" focusable="false" height="225" src = "' + 'data:image/jpeg;base64,' + users[i].base64string +'"></img>'+
        '<div class="card-body">'+
          '<p class="card-text">'+ users[i].firstname +' '+ users[i].lastname +'<br/>'+ users[i].birthday +'</p>'+
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
