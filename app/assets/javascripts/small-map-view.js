
  // // initializes google maps into our app
  // function initialize() {
  //   var lat;
  //   var long;
  //   $.get('/api/locations_api/' + 119, function(data) {
  //     lat = data.latitude;
  //     long = data.longitude;
  //   })


  //   var location = new google.maps.LatLng(lat, long);

  //   var marker = new google.maps.Marker({
  //     position: location,
  //     animation: google.maps.Animation.DROP,
  //   });


  //   // styling for my map
  //   var styles = [{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#e0efef"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"hue":"#1900ff"},{"color":"#c0e8e8"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":700}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#7dcdcd"}]}];

  //   // sets styling for a map
  //   var styledMap = new google.maps.StyledMapType(styles, {name: 'Styled Map'});

  //   // gives us predefined options for our map
  //   var mapOptions = {
  //     center: location,
  //     zoom: 8
  //   };

  //   //creates the map
  //   var map = new google.maps.Map(document.getElementById('map2'), mapOptions);

  //   //This adds styling into my map
  //   map.mapTypes.set('map_style', styledMap);

  //   map.setMapTypeId('map_style');

  //   marker.setMap(map);

  // }

  // // Loads in Google maps on window load
  // google.maps.event.addDomListener(window, 'load', initialize);
