var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'geolocation'} }, function(){
  if(navigator.geolocation)
    navigator.geolocation.getCurrentPosition(displayOnMap);
});

function displayOnMap(position){
  var marker = handler.addMarker({lat: position.coords.latitude, lng: position.coords.longitude });
  var markers = handler.addMarkers([
    { lat: 43, lng: 3.5, name: 'Foo', infowindow: "I'm Foo"},
    { lat: 45, lng: 4, name: 'Foo', infowindow: "I'm Foo"},
    { lat: 47, lng: 3.5, name: 'Foo', infowindow: "I'm Foo"},
    { lat: 49, lng: 4, name: 'Foo', infowindow: "I'm Foo"},
    { lat: 51, lng: 3.5, name: 'Foo', infowindow: "I'm Foo"}
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
  handler.map.centerOn(marker);
};