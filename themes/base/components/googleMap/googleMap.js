(function($) {

	var defaults = {
		/**
		 * Holds the map object
		 */
		newMap: []
	};

	var methods = {
		/**
		 * Initialize the map with options
		 * @param {Object} options
		 */
		init: function (options) {
			var mapId = $(this).data("id");
			var config = options.config ? options.config : {};
			const mapOptions = config.mapOptions ? config.mapOptions : {};
			const markerOptions = config.markerOptions ? config.markerOptions : {};

			// Create a map with config provided
			var newMap = '';
			if (!this.neonGoogleMap('isMapAvailable')) {
				newMap = new google.maps.Map(
					document.getElementById(mapId),
					mapOptions
				);
				this.neonGoogleMap('setMapGlobally', mapId, newMap)
			} else {
				// get map
				newMap = this.neonGoogleMap('getMap', mapId);
			}

			if (!newMap) {
				console.log('Could not create map');
				return false;
			}

			// Loop thro mapdata and create marker(s) & infowindow for the map
			if (options.mapData != false) {
				var bounds = new google.maps.LatLngBounds();

				options.mapData.forEach(function(info, i) {
					// Create marker
					var marker = new google.maps.Marker(Object.assign({}, {
						position: { lat: parseFloat(info.lat), lng: parseFloat(info.lng) },
						label: info.title ? info.title.toString() : '',
						map: newMap,
						icon: info.icon
					}, markerOptions));
					bounds.extend(new google.maps.LatLng(parseFloat(info.lat), parseFloat(info.lng)));

					// Create a pop up on click of marker
					if (info.infoWindow) {
						var infowindow = new google.maps.InfoWindow();
						if (info.infoWindow.show == 'click') {
							google.maps.event.addListener(marker, 'click', (function(marker, i) {
								return function() {
									infowindow.setContent(info.infoWindow.content);
									infowindow.open(newMap, marker);
								}
							})(marker, i));
						} else if (info.infoWindow.show == 'always') {
							infowindow.setContent(info.infoWindow.content);
							infowindow.open(newMap, marker);
						}
					}

				});
				// Fit the map within the markers
				newMap.fitBounds(bounds);
				newMap.panToBounds(bounds);

			} else {
				// Single marker for a location
				new google.maps.Marker({
					position: config.mapOptions.center ? config.mapOptions.center : {},
					map: newMap
				});
			}
		},

		setMapGlobally: function (id, map) {
			window.neonGoogleMaps = window.neonGoogleMaps || {};
			window.neonGoogleMaps[id] = map;
		},

		isMapAvailable: function (id) {
			return window.neonGoogleMaps && window.neonGoogleMaps[id] ? true : false;
		},

		getMap: function (id) {
			return window.neonGoogleMaps && window.neonGoogleMaps[id] ? window.neonGoogleMaps[id] : false;
		}
	}

	$.fn.neonGoogleMap = function(method) {
		if (methods[method]) {
			this.options = $.extend({}, defaults || {});
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error('Method ' + method + ' does not exist on jQuery.neonGoogleMap');
			return false;
		}
	};

})(jQuery);
