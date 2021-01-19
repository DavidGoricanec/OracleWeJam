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
    //get_single_user(window.sessionStorage.getItem("usr_id"));
    get_single_user(1);
}

function fill_out_profile_fields(data)
{
  document.getElementById("div_profilePicture").innerHTML = '<img focusable="false" height="225" src = "' + 'data:'+data.content_type+';base64,' + data.base64string +'"></img>';
  document.getElementById("firstName").value = data.firstname;
  document.getElementById("lastName").value = data.lastname;
  document.getElementById("phoneNumber").value = data.phonenumber;
  document.getElementById("email").value = data.email;
  document.getElementById("birthday").value = data.birthday;

  inputs = document.getElementsByTagName('input');
  for (index = 0; index < inputs.length; ++index) {
      inputs[index].setAttribute("disabled", "disabled");
  }

}
