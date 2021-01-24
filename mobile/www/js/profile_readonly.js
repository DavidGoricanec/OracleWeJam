document.addEventListener('deviceready', onDeviceReady(), false);

function onDeviceReady() {
    get_single_user(window.sessionStorage.getItem("usr_id"));
    //get_single_user(1);
}

function fill_out_profile_fields(data)
{
  document.getElementById("div_profilePicture").innerHTML = '<img focusable="false" width="100%" src = "' + 'data:'+data.content_type+';base64,' + data.base64string +'"></img>';

  var data_str = "";
  data_str += data.firstname + ' ' + data.lastname + '<br /> '
            + data.birthday + '<br /><br /> +43 '
            + data.phonenumber + '<br />' + data.email + '<br /><br />'
            + data.playing_instruments + '<br />'
            + data.playing_level;
            // data.playing_level;

  document.getElementById("user_data").innerHTML = data_str;

  document.getElementById("btn_contacts").innerHTML = '<a class="hyperlink_button" href="whatsapp://send?phone=+43'+ data.phonenumber +'">WhatsApp <i class="fa fa-whatsapp" aria-hidden="true"></i></a>'+
                                                      '<a class="hyperlink_button" href="sms:+43'+ data.phonenumber +'">SMS <i class="fa fa-envelope" aria-hidden="true"></i></a>' +
                                                      '<a class="hyperlink_button" href="tel:+43'+ data.phonenumber +'">Call <i class="fa fa-phone" aria-hidden="true"></i></a>';

}
