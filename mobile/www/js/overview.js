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
              '<button type="button" class="btn btn-sm btn-outline-secondary">View</button>'+
              '<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>'+
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
