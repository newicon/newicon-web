/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./assetsDev/css/_load.css":
/*!*********************************!*\
  !*** ./assetsDev/css/_load.css ***!
  \*********************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/css-loader/index.js):\nModuleBuildError: Module build failed (from ./node_modules/sass-loader/dist/cjs.js):\n\n\tSettings\n                                                                                                                                                                      ^\n      Expected \"{\".\n  ╷\n2 │ var content = require(\"!!../../node_modules/css-loader/index.js?{\\\"importLoaders\\\":1}!../../node_modules/postcss-loader/src/index.js?{\\\"plugins\\\":[null]}!./_load.css\");\n  │                                                                                                                                                                        ^\n  ╵\n  stdin 2:168  root stylesheet\n      in /Users/newicon/Sites/newicon-website/themes/default/assetsDev/css/_load.css (line 2, column 168)\n    at runLoaders (/Users/newicon/Sites/newicon-website/themes/default/node_modules/webpack/lib/NormalModule.js:313:20)\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:367:11\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:233:18\n    at context.callback (/Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:111:13)\n    at render (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass-loader/dist/index.js:89:7)\n    at Function.call$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:53451:16)\n    at _render_closure1.call$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:33267:12)\n    at _RootZone.runBinary$3$3 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:19664:18)\n    at _RootZone.runBinary$3 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:19668:19)\n    at _FutureListener.handleError$1 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18136:19)\n    at _Future__propagateToListeners_handleError.call$0 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18421:40)\n    at Object._Future__propagateToListeners (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3470:88)\n    at _Future._completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18257:9)\n    at _SyncCompleter._completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18123:19)\n    at _SyncCompleter.completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18092:12)\n    at _AsyncAwaitCompleter.completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:17629:25)\n    at Object._asyncRethrow (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3226:17)\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:10407:20\n    at _wrapJsFunctionForAsync_closure.$protected (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3249:15)\n    at _wrapJsFunctionForAsync_closure.call$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:17664:12)\n    at _awaitOnObject_closure0.call$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:17656:25)\n    at _RootZone.runBinary$3$3 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:19664:18)\n    at _RootZone.runBinary$3 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:19668:19)\n    at _FutureListener.handleError$1 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18136:19)\n    at _Future__propagateToListeners_handleError.call$0 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18421:40)\n    at Object._Future__propagateToListeners (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3470:88)\n    at _Future._completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18257:9)\n    at _SyncCompleter._completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18123:19)\n    at _SyncCompleter.completeError$2 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:18092:12)\n    at _AsyncAwaitCompleter_completeError_closure.call$0 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:17643:29)\n    at Object._microtaskLoop (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3520:21)\n    at StaticClosure._startMicrotaskLoop (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:3526:11)\n    at _AsyncRun__scheduleImmediateJsOverride_internalCallback.call$0 (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:17550:21)\n    at invokeClosure (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:1353:26)\n    at Immediate.<anonymous> (/Users/newicon/Sites/newicon-website/themes/default/node_modules/sass/sass.dart.js:1374:18)\n    at runCallback (timers.js:705:18)");

/***/ }),

/***/ "./assetsDev/js/main.js":
/*!******************************!*\
  !*** ./assetsDev/js/main.js ***!
  \******************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
!(function webpackMissingModule() { var e = new Error("Cannot find module 'magnific-popup'"); e.code = 'MODULE_NOT_FOUND'; throw e; }());

;

(function (window, document, $) {
  var $win = $(window);
  var $doc = $(document);

  function parallaxScroll(parallaxArray) {
    var parallaxLength = parallaxArray.length;

    if (parallaxLength > 0) {
      for (var i = 0; i < parallaxLength; i++) {
        var $this = $(parallaxArray[i]);
        var conteinerHeight = $this.outerHeight();
        var offsetTopConteiner = $this.offset().top;
        var offsetTopParent = $this.parent().offset().top;
        var offsetBottomConteinter = offsetTopConteiner + conteinerHeight;
        var winOffset = $win.scrollTop();
        var winOffsetBottom = winOffset + $win.outerHeight(true);
        var speedReduce = parseFloat($this.data('speed'), 10);
        var startPoint = parseFloat($this.data('start'), 10);
        var direction = $this.data('direction');
        var scrolled = winOffset - (offsetTopParent - conteinerHeight * startPoint);
        var reducedScroll = scrolled;
        var translateDirection = '';

        if (direction === "top") {
          translateDirection = '-';
        }

        if (scrolled < 0) {
          scrolled = 0;
        }

        if (winOffsetBottom >= offsetTopConteiner + conteinerHeight * startPoint) {
          $this.css('transform', 'translateY(' + translateDirection + '' + scrolled * speedReduce + 'px)');
        }
      }
    }
  }

  $doc.ready(function () {
    var $sliderTestimonials = $('.sliderTestimonials .slider_slides');
    var $sliderTabs = $('.sliderTabs .slider_slides');
    var $sliderPortfolio = $('.slider-portfolio .slider_slides');
    var $sliderCards = $('.slider-cards .slider_slides');
    var $sliderCardsSecondary = $('.slider-cardsSecondary .slider_slides');
    var $sliderGallery = $('.slider-gallery .slider_slides');
    var $sliderNav = $('.sliderNav');
    var $navSecondary = $('.navSecondary ul');
    var $navTertiary = $('.navTertiary ul');
    var $navQuaternary = $('.navQuaternary ul');
    var $sliderFilters = $('.listFilters');
    var $jsStickyOnScrollParent = $('.js--stickyOnScrollParent');
    var $jsStickyOnScroll = $('.js--stickyOnScroll');
    var $tabSwitchBtn = $('.tabs_switchBtn');
    var parallaxArray = $('.parallax');
    var tabsSwitchClass = '.tabs_switch';
    var tabsMapsClass = '.tabsMaps';
    var tabletWidth = 1024;
    var mobileWidth = 767;
    var timeout;
    $tabSwitchBtn.find('input').on('change', function () {
      var $this = $(this);
      var isCheced = $this.prop('checked');
      $this.closest(tabsSwitchClass).find('[data-tab="tab1"]').toggleClass('current', !isCheced).closest(tabsSwitchClass).find('[data-tab="tab2"]').toggleClass('current', isCheced);
      $this.closest(tabsMapsClass).find('#tab1').toggleClass('current', !isCheced).closest(tabsMapsClass).find('#tab2').toggleClass('current', isCheced);
    });
    $('.link-popup').magnificPopup({
      type: 'iframe',
      mainClass: 'mfp-fade',
      removalDelay: 160,
      preloader: false,
      fixedContentPos: false
    }); //Slider Testimonials

    if ($sliderTestimonials.length) {
      $sliderTestimonials.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 100,
        nav: true,
        navText: ['<i class="ico-angle-arrow-left"></i>', '<i class="ico-angle-arrow-right"></i>'],
        navContainer: '.sliderTestimonials .slider_nav',
        dotsContainer: '.sliderTestimonials .slider_nav .slider_dots'
      });
    } //Slider Tabs


    if ($sliderTabs.length) {
      $sliderTabs.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 100,
        nav: true,
        navText: ['<i class="ico-angle-arrow-left"></i>', '<i class="ico-angle-arrow-right"></i>'],
        navContainer: '.sliderTabs .slider_nav',
        dotsContainer: '.sliderTabs .slider_nav .slider_dots'
      });
    } //Slider Gallery


    if ($sliderGallery.length) {
      $sliderGallery.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 100,
        nav: true,
        navText: ['<i class="ico-angle-arrow-left-secondary"></i>', '<i class="ico-angle-arrow-right-secondary"></i>'],
        navContainer: '.slider-gallery .slider_nav',
        dotsContainer: '.slider-gallery .slider_nav .slider_dots'
      });
    } //Slider Portfolio


    if ($sliderPortfolio.length) {
      $sliderPortfolio.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 50,
        dots: false,
        animateOut: 'fadeOut'
      });
    } //Slider Nav


    if ($sliderNav.length) {
      $sliderNav.find('ul').addClass('owl-carousel').owlCarousel({
        items: 4,
        margin: 1,
        dots: false,
        mouseDrag: false,
        responsive: {
          767: {
            items: 5,
            margin: 2
          },
          1024: {
            items: 6,
            margin: 20
          }
        }
      });
    } //Slider Nav


    if ($navSecondary.length) {
      $navSecondary.addClass('owl-carousel').owlCarousel({
        items: 2,
        margin: 1,
        dots: false,
        responsive: {
          767: {
            items: 3
          }
        }
      });
    } //Slider Nav


    if ($navTertiary.length) {
      var elementsNumber = $navTertiary.parent().data('elements');
      $navTertiary.addClass('owl-carousel').owlCarousel({
        items: 1,
        margin: 1,
        dots: false,
        responsive: {
          767: {
            items: elementsNumber
          }
        }
      });
    } //Slider Nav


    if ($navQuaternary.length) {
      $navQuaternary.addClass('owl-carousel').owlCarousel({
        autoWidth: true,
        margin: 20,
        dots: false,
        responsive: {
          767: {
            margin: 49
          }
        }
      });
    } //Slider Cards


    if ($sliderCards.length) {
      $sliderCards.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 10,
        dots: false,
        nav: true,
        responsive: {
          768: {
            items: 2
          },
          1024: {
            items: 3
          },
          1200: {
            items: 4
          }
        }
      });
    } //Slider Cards


    if ($sliderCardsSecondary.length) {
      $sliderCardsSecondary.addClass('owl-carousel').owlCarousel({
        items: 1,
        mouseDrag: false,
        touchDrag: false,
        margin: 10,
        dots: false,
        nav: true,
        responsive: {
          768: {
            items: 2
          },
          1024: {
            items: 3
          }
        }
      });
    } //Slider Nav


    if ($sliderFilters.length) {
      $sliderFilters.addClass('owl-carousel').owlCarousel({
        items: 2,
        margin: 10,
        dots: false,
        autoWidth: true,
        responsive: {
          767: {
            items: 5,
            margin: 2
          },
          1024: {
            items: 6,
            margin: 16
          }
        }
      });
    }

    $('.nav > ul > li').each(function (index, el) {
      var $this = $(this);
      var isDropdown = $this.find('.dropdown').length > 0;

      if (isDropdown) {
        $this.addClass('has_dropdown');
      }
    });
    $('.nav').on('click', '.has_dropdown', function (event) {
      var $this = $(this);

      if ($win.outerWidth() < tabletWidth) {
        $this.find('.dropdown').slideToggle().closest('li').siblings().find('.dropdown').slideUp();
        event.preventDefault();
      }
    });
    $sliderNav.find('li').on('click', function () {
      var $this = $(this);
      $this.addClass('current').closest('.owl-item').siblings().find('li').removeClass('current');
      $sliderPortfolio.trigger('to.owl.carousel', [$this.closest('.owl-item').index(), 400]);
    });
    $('.navTrigger').on('click', function (event) {
      $(this).toggleClass('navTrigger-active');
      $('.nav').toggleClass('open');
      $('.header-secondary').toggleClass('navOpen');
      event.preventDefault();
    }); //Hide the inactive sections

    $('.accordion_section').not('.accordion_section-current').find('.accordion_body').hide(); //Handle the show/hide logic

    $('.accordion').on('click', '.accordion_head', function (event) {
      $(this).next().stop().slideToggle().parent().toggleClass('accordion_section-current');
    }); // Tabs

    var activeTabClass = 'current';
    $('.tabs_nav a').on('click', function (event) {
      event.preventDefault();
      var $tabLink = $(this);
      var $targetTab = $($tabLink.attr('href'));
      $tabLink.parent().add($targetTab).addClass(activeTabClass).siblings().removeClass(activeTabClass);
    });
    $win.on('load scroll', function () {
      var winScrollTop = $(window).scrollTop();

      if ($jsStickyOnScroll.length) {
        var isElementSticky = winScrollTop > $jsStickyOnScrollParent.offset().top;
        var isElementBottom = $jsStickyOnScrollParent.offset().top + $jsStickyOnScrollParent.outerHeight() < winScrollTop + $jsStickyOnScroll.outerHeight();
        $jsStickyOnScroll.toggleClass('fixed', isElementSticky).toggleClass('bottom-align', isElementBottom);
      }

      clearTimeout(timeout);

      if ($win.outerWidth(true) > mobileWidth) {// timeout = setTimeout(function() {
        // 	parallaxScroll(parallaxArray);
        // }, 10);
      }
    }, {
      passive: true
    });
  });
})(window, document, window.jQuery);

/***/ }),

/***/ 0:
/*!**************************************************************!*\
  !*** multi ./assetsDev/js/main.js ./assetsDev/css/_load.css ***!
  \**************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! /Users/newicon/Sites/newicon-website/themes/default/assetsDev/js/main.js */"./assetsDev/js/main.js");
module.exports = __webpack_require__(/*! /Users/newicon/Sites/newicon-website/themes/default/assetsDev/css/_load.css */"./assetsDev/css/_load.css");


/***/ })

/******/ });