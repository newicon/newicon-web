Google map components

Requirements:
1) Google map api key
2) New pricing changes will go into effect starting July 16, 2018. For more information, check out the Guide for Existing Users.
   https://cloud.google.com/maps-platform/user-guide
3) Place below line in the footer
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY" async defer></script>
newicon api key - AIzaSyCRTnwmDtarYC0hFz3w_jFcBDHCRNtveOg


Usage:
{googleMap id='mapId' config=[] mapData=[]}

Google map expects:
	id - unique string for map
	config - [
		mapOptions - [
			zoom => number
            mapTypeId => roadmap|satellite|hybrid|terrain
            center => e.g {lat: -33.9, lng: 151.2}
            the options here will be merged with new google.maps.Map(mapOptions)
		]
		markerOptions - [
			the options here will be merged with new google.maps.Marker(markerOptions)
		]
	]
	mapData - [
		[
			lat: latitude,
			lng: longitude,
			title: title for the marker
			icon: image url or svg path object or circle path object
			infoWindow => [
                show => 'click'|'always',
                content => text|html
            ],
		]
	]

E.g. for icon in map data:
For a marker as a circle with magnitude
{
	path: value of `google.maps.SymbolPath.CIRCLE`,
	fillColor: 'red',
	fillOpacity: .2,
	scale: Math.pow(2, magnitude) / 2,
	strokeColor: 'white',
	strokeWeight: .5
}

Note:
	Whatever is sent in config will be merged with sencond param in new google.maps.Map function.
	