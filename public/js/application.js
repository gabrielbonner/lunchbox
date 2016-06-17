$(document).ready(function() {
  $.ajax({
    method: 'GET',
    dataType: 'json',
    url: '/markers'
  })
    .done(function(response){
      console.log(response);
      for (var i = 0; i < response.length; i++) {
        var marker_json = response[i];
        console.log(marker_json.latitude);
        console.log(marker_json.longitude);
        var marker = new google.maps.Marker({
          position: new google.maps.LatLng(parseInt(marker_json.latitude), parseInt(marker_json.longitude)),
          map: map
        });
      }

    })
    .fail(function(response){
      console.log(response);
    });
});
