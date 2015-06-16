$(document).ready(function() {

  // gets the parameters of the search string
  function getQueryVariable(variable){
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
     var pair = vars[i].split("=");
     if(pair[0] == variable){return pair[1];}
    }
    return(false);
  }

  // gets search term
  var searchTerm = getQueryVariable("search");
  // gets search type (either name or location)
  var searchType = getQueryVariable("search_type");



  // initializes the google map
  function initialize() {

    // if a search term is present
    if(searchTerm) {
      // if user is searching by name
      if (searchType == 'Name') {
        $.get('/api/locations_api/search_name?search=' + searchTerm, function(data) {
          makeMap(data);
        });
      }
      // else the user is searching by location
      else {
        $.get('/api/locations_api/search_location?search=' + searchTerm, function(data) {
          makeMap(data);
         });
      }
    }
    // else no search term is present and all locations are rendered
    else {
      $.get('/api/locations_api', function(data) {
        makeMap(data);
      });
    }

  } // close initialize

  // initializes map on window load
  google.maps.event.addDomListener(window, 'load', initialize);


  // builds the map according to data
  function makeMap(data) {
    var mapOptions = {
      zoom: 8
    };

    var styles = [{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#e0efef"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"hue":"#1900ff"},{"color":"#c0e8e8"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":700}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#7dcdcd"}]}];

    var styledMap = new google.maps.StyledMapType(styles, {name: 'Styled Map'});

    //creates the map
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    map.mapTypes.set('map_style', styledMap);

    map.setMapTypeId('map_style');
    console.log(data)
    var bounds = new google.maps.LatLngBounds();
    var images = [];
    var marker_array = [];
    var id_array = [];
    for (var i = 0; i < data.length; i++) {
      var mark = new google.maps.Marker({
        position: new google.maps.LatLng(data[i].latitude, data[i].longitude),
        title: data[i].name,
        id: data[i].id,
        address: data[i].address,
        yelp_id: data[i].yelp_id,
        icon: "/assets/marker.svg",
        animation: google.maps.Animation.DROP

      }); // close new marker
      var thisId = data[i].id
      console.log(thisId)

      id_array[data[i].id] = data[i].yelp_id;
      marker_array.push(mark);
      bounds.extend(mark.position);
    } // end first for loop
    // attaches event listeners to each infowindow
    
    for (var x = 0; x < marker_array.length; x++) {
      var item = marker_array[x];

      var infowindow = new google.maps.InfoWindow({

      });

      //
      google.maps.event.addListener(item, "click", function (e) {
        // console.log(this.id + "this.id")
        var image = "";
        var id = this.id;
        var yelp_id = id_array[id];
        var self = this;
        var name = this.title;
        var address = this.address;
        var div = document.createElement('div');

        $.get('/api/locations_api/reviews/' + this.id, function(data) {
          if (typeof data[0] != 'undefined' && data[0].photo.url != null) {

            image = String("<img class='gallery-image' src='" + data[0].photo.url + "'>");
            console.log(data[0].photo);
          }
          else {
            image = "";
          }

          console.log(image);
        }).done(function() {
          div.innerHTML = "<a href='/locations/" + id + "' data-no-turbolink><div class='iw-title'>" + name + "</div><div class='iw-subtitle'>" + address + "</div><div class='iw-content'>" + image + "<span class='glyphicon glyphicon-chevron-right'></span></div></a>";
          infowindow.setContent(div);
          // div.onclick = function(){
          //   fillModal(name, id, yelp_id);
            
          //   $('#showModal').modal('show')
          // };

        })
          infowindow.open(map, self);
        $('.gm-style-iw').on("mouseenter", function() {
          $('.glyphicon-chevron-right').css( "color", "#d35400" );
        });
        $('.gm-style-iw').on("mouseleave", function() {
          $('.glyphicon-chevron-right').css( "color", "#e67e22" );
        })

      }); // close add event

      item.setMap(map);
    } // close 2nd for loop

        map.fitBounds(bounds);
  } // close makeMap


}); // close document ready
