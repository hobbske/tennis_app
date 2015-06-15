// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.

// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.

// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.

// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

// = require jquery
// = require jquery_ujs
// = require bootstrap
// = require_tree .



  // var directionsDisplay;
  // var directionsService = new google.maps.DirectionsService();
  // var map;

  // function initialize() {
  //   directionsDisplay = new google.maps.DirectionsRenderer();
  //   var chicago = new google.maps.LatLng(41.850033, -87.6500523);
  //   var mapOptions = {
  //     zoom:7,
  //     center: chicago
  //   }
  //   map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  //   directionsDisplay.setMap(map);
  // }

  // function calcRoute() {
  //   var start = document.getElementById("start").value;
  //   var end = document.getElementById("end").value;
  //   var request = {
  //     origin:start,
  //     destination:end,
  //     travelMode: google.maps.TravelMode.DRIVING
  //   };
  //   directionsService.route(request, function(result, status) {
  //     if (status == google.maps.DirectionsStatus.OK) {
  //       directionsDisplay.setDirections(result);
  //     }
  //   });