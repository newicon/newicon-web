(function($) {

	var defaults = {
		/**
		 * This is the parent - outermost container for the lane
		 * This 'collpsed class is applied to this container'
		 * We also get the swimlane id from this element
		 * Filter the cards based on this container and its data atrributes
		 * incase if you need to change the selector please see that you add the data attributes (id)
		 * required for this selector
		 * @type {String}
		 */
		laneSelector: '.swimlane',
		/**
		 * Selector for the toggle text/icon
		 * @type {String}
		 */
		toggleSelector: '.swimlane_toggle',
		/**
		 * Selector for the filter selectable element
		 * @type {String}
		 */
		filterSelector: '.swimlane_filterVal',
		/**
		 * This is the card wrapper class where we have our filter data attributes
		 * @type {String}
		 */
		cardWrapper: '.swimlaneCard',
		/**
		 * For filter we need to show all. this is the value when we need to show all
		 * @type { 
		 *       name: {String}
		 *       value: {String}
		 *  }
		 */
		resetFilterAttr: {
			name: 'all',
			value: 'all'
		},
		/**
		 * This is the selector whose text will be replaced with the selected dropdown text
		 * @type {String}
		 */
		dropdownTextSelector: '.swimlane_filterText',
		/**
		 * Function that will be called before the filter is applied to the cards
		 * @type {Function}
		 */
		beforeFilter: '',
		/**
		 * Function that will be called after the filter is applied to the cards
		 * @type {Function}
		 */
		afterFilter: '',
	};

	var methods = {
		/**
		 * Initialize the swimlanes with options
		 * @param {Object} options
		 */
		init: function(options) {
			return this.each(function() {
				var $e = $(this);
				$e.options = options;
				$e.neonSwimlane('attachEvents');
			});
		},

		/**
		 * Attach events for toogle and filter
		 */
		attachEvents: function() {
			var $lane = this;

			if ($lane.find($lane.options.toggleSelector).length > 0) {
				$lane.on('click', $lane.options.toggleSelector, function() {
					$lane.neonSwimlane('toggle');
				});
			}

			if ($lane.find($lane.options.filterSelector).length > 0) {
				$lane.on('click', $lane.options.filterSelector, function() {
					$lane.neonSwimlane('actionFilter', this);
				});
			}
		},

		/**
		 * Show/Hide the swimlane
		 */
		toggle: function() {
			var $lane = this;

			// Collapse/Expand the lane
			if ($lane.hasClass('m_collapsed')) {
				$lane.removeClass('m_collapsed');
			} else {
				$lane.addClass('m_collapsed');
			}
		},

		/**
		 * Call before filter operation if provided
		 */
		beforeFilter: function(func) {
			// execute the function before filtering
			if (typeof func === 'function') {
				func();
			}
		},

		/**
		 * Call after filter operation if provided
		 */
		afterFilter: function(func) {
			// execute the function before filtering
			if (typeof func === 'function') {
				func();
			}
		},

		/**
		 * Set the selected text of the dropdown with the selected value
		 */
		setFilterDropdown: function(element) {
			var $lane = this;
			// Confirm the selection and add class selected
			$(element).parent().addClass('m_selected');
			$(element).addClass('m_selected');

			// Replace the text with the selected text
			var selectedText = $(element).text();
			$lane.find($lane.options.dropdownTextSelector).text(selectedText);
		},

		/**
		 * Filters the swimlanes cards based on the filter attributes
		 * 
		 * @param {HTMLElement} element - The element on which event was trigerred
		 * @return {boolean}
		 */
		filter: function(element) {
			var $lane = this;
			if (element === undefined) {
				return false;
			}

			// Get the data attributes from the selected element
			var filterAttrs = $(element).data();
			if (filterAttrs === undefined) {
				return false;
			}

			// When we need to show all cards
			if (filterAttrs.option === $lane.options.resetFilterAttr.value && filterAttrs.filter === $lane.options.resetFilterAttr.name) {
				$lane.find($lane.options.cardWrapper).show();
				return false;
			}

			// When we need to filter the cards
			var filterDataAttr = 'card' + filterAttrs.filter.charAt(0).toUpperCase() + filterAttrs.filter.slice(1);;
			$lane.find('[data-card-' + filterAttrs.filter + ']').each(function() {
				if ($(this).data(filterDataAttr) === filterAttrs.option) {
					$(this).parent().show()
				} else {
					$(this).parent().hide()
				}
			});
		},

		/**
		 * Action the filter
		 * @param  {HTMLElement} element  - The element on which event was trigerred
		 */
		actionFilter: function(element) {
			var $lane = this;
			// Any action BEFORE the filter is applied to the swimlane
			$lane.neonSwimlane('beforeFilter', $lane.options.beforeFilter);

			// Set the dropdown text to the applied filter value
			if ($lane.find($lane.options.dropdownTextSelector).length > 0) {
				$lane.neonSwimlane('setFilterDropdown', element);
			}

			// Apply the filter to the swimlane
			$lane.neonSwimlane('filter', element);

			// Any action AFTER the filter is applied to the swimlane
			$lane.neonSwimlane('afterFilter', $lane.options.afterFilter);
		}
	}

	$.fn.neonSwimlane = function(method) {
		if (methods[method]) {
			this.options = $.extend({}, defaults || {});
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error('Method ' + method + ' does not exist on jQuery.neonSwimlane');
			return false;
		}
	};

})(jQuery);