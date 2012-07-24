$(document).ready(function(){
  alert($("#event_latitude").val());
  var url = GMaps.staticMapURL({
    size: [250, 250],
    lat: $("#event_latitude").val(),
    lng: $("#event_longitude").val(),
    markers: [ {lat: $("#event_latitude").val(), lng: $("#event_longitude").val()} ]
  });
  $('<img/>').attr('src', url).appendTo('#map');
});