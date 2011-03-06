// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	
	 $("a").click(function() {
    link_host = this.href.split("/")[2];
    document_host = document.location.href.split("/")[2];

    if (link_host != document_host) {
      window.open(this.href);
      return false;
    }
  });

	if ( $("#formpage").length ) {
 		initializemapform();
	}
	else if ($("#showpage").length){
		initializemaps();
	}
	
              
});

var geocoder;
var map;
var marker;
   
function initializemaps(){
//MAP
  var latlng = new google.maps.LatLng(51.420466,6.772605);
  var options = {
    zoom: 18,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.SATELLITE
  };
       
  map = new google.maps.Map(document.getElementById("map_canvas"), options);

		
	var latlng = new google.maps.LatLng(51.420466,6.772105);
     
  //GEOCODER
  geocoder = new google.maps.Geocoder();
  
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
	placemarker();

}  

var geocoder;
var map;
var marker;

function initializemapform(){
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
  
  // Add dragging event listeners.
  google.maps.event.addListener(marker, 'dragstart', function() {
  });
  
  google.maps.event.addListener(marker, 'drag', function() {
   });
  
  google.maps.event.addListener(marker, 'dragend', function() {
    pos = marker.getPosition();
		$("#video_latitude").val(pos.lat());
		$("#video_longitude").val(pos.lng());
  });
  
}
