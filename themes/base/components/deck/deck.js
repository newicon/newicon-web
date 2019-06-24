var deck = {

	init: function() {
		// JS Media Queries - uses enquire.js - triggers on each breakpoint
		enquire.register('(min-width: ' + window.bp.screen_lg + 'px)', {
			match: function() {
				deck.closeAllTiles();
			}
		}).register('(min-width: ' + window.bp.screen_md + 'px) and (max-width: ' + (window.bp.screen_lg - 1) + 'px)', {
			match: function() {
				deck.closeAllTiles();
			}
		}).register('(min-width: ' + window.bp.screen_xs + 'px) and (max-width: ' + (window.bp.screen_md - 1) + 'px)', {
			match: function() {
				deck.closeAllTiles();
			}
		}).register('(max-width: ' + (window.bp.screen_xs - 1) + 'px)', {
			match: function() {
				deck.closeAllTiles();
			}
		});

		// Init the card reveal plugin for each cardGridRow grid instance
		if ($('.deckRow').length > 0) {
			deck.deckCardInit('.deckRow');
			deck.equaliseCardHeights();
		}

		//open any card that should be open on page load
		$('.m_activeOnStart').trigger('click');
	},

	equaliseCardHeights: function() {
		$('.deck').each(function() {
			var postGrid = $(this).find('.card');

			if (postGrid.length) {

				//Detect when images have finished loading when first
				// calling the alignment function- requires imagesLoaded library
				postGrid.imagesLoaded(function() {
					NEWICON_RU.set_element_group_height(postGrid);
				});

				$(window).on('resize', function(e, resizeEvent) {
					// Realign on resize
					NEWICON_RU.set_element_group_height(postGrid);
				});
			}
		});
	},
	// Close all cards when the grid layout changes
	closeAllTiles: function() {
		$('.card.m_active').removeClass('m_active');
		$('.card_secondary.m_active').remove();
	},

	deckCardInit: function(specifier) {
		$(specifier).each(function(i, container) {
			var pack = {
				find: function(specifier) {
					return $(container).find(specifier);
				},
				cards: $(container).find('.deckCard'),
				columns: function() {
					return $(container).data('columns-' + window.screenSize);
				},
				onClick: function(specifier, fn) {
					$(container).on('click', specifier, fn);
				},

				/**
				 * handle revealing between different cards' content on click
				 */
				click: function(e) {
					e.preventDefault();
					var card = $(this).parent('.card');
					card.reveal = $(card).data('card-reveal');
					card.parent = $(this).parents('.deckCard');
					card.hasClass('m_active') ? pack.unreveal(card) : pack.reveal(card);
				},

				/**
				 * Open the given card's content by appending it to the end of the row
				 */
				reveal: function(card) {
					switch (card.reveal) {
						case 'link':
							break;
						case 'below':
						default:
							var columns = pack.columns();
							var rowNum = Math.ceil(card.parent.data('col-num') / columns);
							var revealContent = card.find('.card_secondary').clone();
							var endCard = $(pack.cards[(columns * rowNum) - 1]);
							if (endCard.length == 0)
								endCard = pack.cards.last();
							var rowOpen = (pack.find('.card.m_active').length > 0);
							pack.find('.card.m_active').removeClass('m_active');
							card.addClass('m_active');
							endCard.after(revealContent);
							if (rowOpen) {
								pack.find('.card_secondary.m_active').remove();
								revealContent.fadeIn();
							} else {
								revealContent.slideDown();
							}
							revealContent.addClass('m_active');
							pack.scrollIntoView(card);
							break;
					}
				},

				/**
				 * Scroll the click card to the top of the page
				 */
				scrollIntoView: function(card) {
					$('html, body').animate({
						scrollTop: card.offset().top - 10
					});
				},

				/**
				 * Close the currently open card's content
				 */
				unreveal: function(card) {
					pack.find('.card_secondary.m_active').slideUp(function() {
						$(this).remove();
						pack.find('.card.m_active').removeClass('m_active');
					});
				}

			};

			pack.onClick("[data-card-reveal~='below'] .card_reveal", pack.click);
			pack.onClick(".card_secondary .card_unreveal", pack.unreveal);

		});
	}

	// return to maintain chainability
};

//$('.deckRow').deckCardInit();

/**
 * Init the deck card plugin
 */
jQuery(function($) {

	$(window).on('load', function() {
		deck.init();
	})
});