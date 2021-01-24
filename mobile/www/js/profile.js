// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

document.addEventListener('deviceready', onDeviceReady(), false);

function onDeviceReady() {
    //get_single_user(null);
    get_single_user(1);
}

function fill_out_profile_fields(data)
{
  document.getElementById("div_profilePicture").innerHTML = '<img focusable="false" src = "' + 'data:'+data.content_type+';base64,' + data.base64string +'"></img>';
  document.getElementById("firstName").value = data.firstname;
  document.getElementById("lastName").value = data.lastname;
  document.getElementById("phoneNumber").value = data.phonenumber;
  document.getElementById("email").value = data.email;
  document.getElementById("birthday").value = data.birthday;
  document.getElementById("started_playing").value = data.started_playing;
  document.getElementById("play_level").value = data.playing_level;
  document.getElementById("instruments").value = data.playing_instruments;

  /*if(data.edit_priv='N')
  {
    inputs = document.getElementsByTagName('input');
    for (index = 0; index < inputs.length; ++index) {
        inputs[index].setAttribute("disabled", "disabled");
        inputs[index].classList.add("disabled");
    }
  }*/
}

function update_my_profile(e)
{
  e.preventDefault();
  var firstname = document.getElementById("firstName").value;
  var lastname = document.getElementById("lastName").value;
  var phonenumber = document.getElementById("phoneNumber").value;
  var email = document.getElementById("email").value;
  var birthday = document.getElementById("birthday").value;
  var started_playing = document.getElementById("started_playing").value;
  var playing_level = document.getElementById("play_level").value;
  var playing_instruments = document.getElementById("instruments").value;

  update_current_user(firstname,lastname,phonenumber,email,formatDate(birthday),instruments,play_level,started_playing);
}
