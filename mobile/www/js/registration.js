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

function registrate(e) {
  e.preventDefault();

  var firstName = document.getElementById("firstName").value;
  var lastName = document.getElementById("lastName").value;
  var email = document.getElementById("email").value;
  var birthday = document.getElementById("birthday").value;
  var password = document.getElementById("password").value;

  if (email == "" || email == null || lastName == "" || lastName == null
      || firstName == "" || firstName == null || birthday == "" || birthday == null
      || password == "" || password == null)
  {
    alert("Please fill out all fields!");
  }
  else {
    birthday = formatDate(birthday);

    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;

      registrate_ajax(firstName, lastName, email, birthday, latitude, longitude, password);

    },
    //GPS Location Error
    function(error) {alert('code: '    + error.code    + '\n' +
                           'message: ' + error.message + '\n');
                    }
    )
  }
}
