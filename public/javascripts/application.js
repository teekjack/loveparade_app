// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
		
	initializemaps();
                 
  $(function() {
    $("#micropost_location").autocomplete({
      //This bit uses the geocoder to fetch address values
      source: function(request, response) {
        geocoder.geocode( {'address': request.term }, function(results, status) {
          response($.map(results, function(item) {
						for(i=0; i < item.types.length; i++){						
							if(item.types[i] == 'country'){
            	return {
              	label:  item.formatted_address,
              	value: item.formatted_address,
              	latitude: item.geometry.location.lat(),
              	longitude: item.geometry.location.lng()
            	}
							break;
							}
						}
          }));
        })
      },
      //This bit is executed upon selection of an address
      select: function(event, ui) {
        $("#micropost_latitude").val(ui.item.latitude);
        $("#micropost_longitude").val(ui.item.longitude);
				//$("#micropost_location").val(ui.item.label);

        var location = new google.maps.LatLng(ui.item.latitude, ui.item.longitude);
        marker.setPosition(location);
        map.setCenter(location);
      }
    });
  });

	if ( $("#showpage").length ) {
 		placemarker();
	}


});

  

var geocoder;
var map;
var marker;

function initializemaps(){
//MAP
  var latlng = new google.maps.LatLng(51.420466,6.772835);
  var options = {
    zoom: 17,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.SATELLITE
  };
	map = new google.maps.Map(document.getElementById("map_canvas"), options);

					var image = new google.maps.MarkerImage(
	  			'/images/marker-images/image.png',
	  			new google.maps.Size(20,21),
	  			new google.maps.Point(0,0),
	  			new google.maps.Point(10,21)
				);

				var shadow = new google.maps.MarkerImage(
	  			'/images/marker-images/shadow.png',
	  			new google.maps.Size(34,21),
	  			new google.maps.Point(0,0),
	  			new google.maps.Point(10,21)
				);

				var shape = {
	  			coord: [17,0,17,1,17,2,18,3,19,4,19,5,19,6,19,7,19,8,19,9,19,10,19,11,18,12,18,13,18,14,18,15,18,16,18,17,18,18,18,19,17,20,3,20,3,19,3,18,3,17,3,16,3,15,1,14,1,13,1,12,0,11,0,10,0,9,0,8,0,7,0,6,1,5,1,4,4,3,3,2,3,1,4,0,17,0],
 	 				type: 'poly'
				};
  
	var marker = new google.maps.Marker({
		icon: image,
  	shadow: shadow,
  	shape: shape,    
		position: latlng,
    title: 'Point A',
    map: map,
    draggable: true
  });
	// Update current position info.
  updateMarkerPosition(latLng);
  geocodePosition(latLng);
  
  // Add dragging event listeners.
  google.maps.event.addListener(marker, 'dragstart', function() {
    updateMarkerAddress('Dragging...');
  });
  
  google.maps.event.addListener(marker, 'drag', function() {
    updateMarkerStatus('Dragging...');
    updateMarkerPosition(marker.getPosition());
  });
  
  google.maps.event.addListener(marker, 'dragend', function() {
    updateMarkerStatus('Drag ended');
    geocodePosition(marker.getPosition());
  });
       
  

		
	var latlng = new google.maps.LatLng(51.420466,6.772835);
     
  //GEOCODER
  geocoder = new google.maps.Geocoder();
  


}
