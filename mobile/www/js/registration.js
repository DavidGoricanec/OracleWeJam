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

function registrate(e) {
  e.preventDefault();

  var firstName = document.getElementById("firstName").value;
  var lastName = document.getElementById("lastName").value;
  var email = document.getElementById("email").value;
  var birthday = document.getElementById("birthday").value;
  var password = document.getElementById("password").value;
  var phonenumber = document.getElementById("phoneNumber").value;

  if (email == "" || email == null || lastName == "" || lastName == null
      || firstName == "" || firstName == null || birthday == "" || birthday == null
      || password == "" || password == null || phonenumber == "" || phonenumber == null)
  {
    alert("Please fill out all fields!");
  }
  else {
    birthday = formatDate(birthday);

    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;

      registrate_ajax(firstName, lastName, email, birthday, latitude, longitude, password, phonenumber);

    },
    //GPS Location Error
    function(error) {alert('code: '    + error.code    + '\n' +
                           'message: ' + error.message + '\n');
                    }
    )
  }
}
