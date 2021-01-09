var instruments_fill_html = "";//"<option value=''/>";
var play_level_fill_html = "";//"<option value=''/>";

document.addEventListener('deviceready', onDeviceReady(), false);

function onDeviceReady() {
    get_instruments();
}

function getSelectValues(select) {
  var result = [];
  var options = select && select.options;
  var opt;

  for (var i=0, iLen=options.length; i<iLen; i++) {
    opt = options[i];

    if (opt.selected) {
      result.push(opt.value || opt.text);
    }
  }
  return result;
}

function set_profile_picture(e) {
 e.preventDefault();
 navigator.camera.getPicture(function cameraSuccess(imageData) {
      upload_media("Y", "test", "image/jpeg", imageData);

 }, function cameraError(error) {
     console.debug("Unable to obtain picture: " + error, "app");
     alert(error);
 },  {  quality: 25,
        //allowEdit: true, //DOES NOT WORK
        destinationType:  Camera.DestinationType.DATA_URL,
        encodingType: Camera.EncodingType.JPEG,
        //correctOrientation: true,
        sourceType: Camera.PictureSourceType.SAVEDPHOTOALBUM});
}

function fill_insturment_selections(data)
{
  for (var i = 1; i < data.length; i++) {
    instruments_fill_html += '<option value="'+ data[i].instr_code +'">'+ data[i].name + '</option>';
  }

  var array = data[0].instr_code.split(";");

  for (var i = 0; i < array.length; i += 2) {
    play_level_fill_html += '<option value="'+ array[i+1] +'">'+ array[i] + '</option>';
  }

  document.getElementById("instrument_selection").innerHTML = instruments_fill_html;
  document.getElementById("play_level_selection").innerHTML = play_level_fill_html;
}


function save_instrument_data(e)
{
  e.preventDefault();
  var play_level = document.getElementById("play_level_selection").value;
  var instruments = getSelectValues(document.getElementById("instrument_selection"));
  var started_playing = formatDate(document.getElementById("started_playing").value);

  var inst_array = String(instruments).split(",");

  var output = "";
  for (var i = 0; i < inst_array.length; i++) {
     output += inst_array[i] +","+play_level+","+started_playing+";";

  }
  output = output.slice(0, -1);
  //console.log(output);
  put_insturment(output);
}
