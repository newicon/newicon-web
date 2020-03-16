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

/***/ "./css/app.css":
/*!*********************!*\
  !*** ./css/app.css ***!
  \*********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("throw new Error(\"Module build failed (from ./node_modules/css-loader/index.js):\\nModuleBuildError: Module build failed (from ./node_modules/postcss-loader/src/index.js):\\nSyntaxError: Unexpected token (164:5)\\n    at _class.pp$4.raise (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2836:15)\\n    at _class.pp.unexpected (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:689:10)\\n    at _class.pp.expect (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:683:28)\\n    at _class.pp$3.parseObj (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2470:14)\\n    at _class.pp$3.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2236:19)\\n    at _class.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/dynamic-import/index.js:77:117)\\n    at _class.pp$3.parseExprSubscripts (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2089:21)\\n    at _class.pp$3.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2066:19)\\n    at _class.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/private-class-elements/index.js:122:54)\\n    at _class.pp$3.parseExprOps (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2010:21)\\n    at _class.pp$3.parseMaybeConditional (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1993:21)\\n    at _class.pp$3.parseMaybeAssign (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1968:21)\\n    at _class.pp$3.parsePropertyValue (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2537:89)\\n    at _class.pp$3.parseProperty (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2528:10)\\n    at _class.pp$3.parseObj (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2474:23)\\n    at _class.pp$3.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2236:19)\\n    at _class.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/dynamic-import/index.js:77:117)\\n    at _class.pp$3.parseExprSubscripts (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2089:21)\\n    at _class.pp$3.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2066:19)\\n    at _class.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/private-class-elements/index.js:122:54)\\n    at _class.pp$3.parseExprOps (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2010:21)\\n    at _class.pp$3.parseMaybeConditional (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1993:21)\\n    at _class.pp$3.parseMaybeAssign (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1968:21)\\n    at _class.pp$3.parsePropertyValue (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2537:89)\\n    at _class.pp$3.parseProperty (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2528:10)\\n    at _class.pp$3.parseObj (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2474:23)\\n    at _class.pp$3.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2236:19)\\n    at _class.parseExprAtom (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/dynamic-import/index.js:77:117)\\n    at _class.pp$3.parseExprSubscripts (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2089:21)\\n    at _class.pp$3.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2066:19)\\n    at _class.parseMaybeUnary (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/lib/private-class-elements/index.js:122:54)\\n    at _class.pp$3.parseExprOps (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2010:21)\\n    at _class.pp$3.parseMaybeConditional (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1993:21)\\n    at _class.pp$3.parseMaybeAssign (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:1968:21)\\n    at _class.pp$3.parsePropertyValue (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2537:89)\\n    at _class.pp$3.parseProperty (/Users/newicon/Sites/newicon-website/themes/default/node_modules/acorn-node/node_modules/acorn/dist/acorn.js:2528:10)\\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/webpack/lib/NormalModule.js:316:20\\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:367:11\\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:233:18\\n    at context.callback (/Users/newicon/Sites/newicon-website/themes/default/node_modules/loader-runner/lib/LoaderRunner.js:111:13)\\n    at /Users/newicon/Sites/newicon-website/themes/default/node_modules/postcss-loader/src/index.js:208:9\\n    at processTicksAndRejections (internal/process/task_queues.js:93:5)\");//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiIuL2Nzcy9hcHAuY3NzLmpzIiwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./css/app.css\n");

/***/ }),

/***/ "./js/main.js":
/*!********************!*\
  !*** ./js/main.js ***!
  \********************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("// import 'magnific-popup';\n// import Vue from 'vue';\n// import Stylizer from './stylizer.vue';\n// import 'owl.carousel';\n// Vue.component('Stylizer', Stylizer);\n// const StylizerClass = Vue.extend(Stylizer);\n// window.stylizer = new StylizerClass();\n// window.stylizer.$mount();\n// window.document.body.appendChild(window.stylizer.$el);\n// import VueAgile from 'vue-agile'\n// Vue.use(VueAgile)\n// window.Vue = Vue;//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9qcy9tYWluLmpzP2UzYjEiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7QUFDQTtBQUNBO0FBQ0E7QUFFQTtBQUVBO0FBQ0E7QUFDQTtBQUNBO0FBRUE7QUFDQTtBQUNBIiwiZmlsZSI6Ii4vanMvbWFpbi5qcy5qcyIsInNvdXJjZXNDb250ZW50IjpbIi8vIGltcG9ydCAnbWFnbmlmaWMtcG9wdXAnO1xuLy8gaW1wb3J0IFZ1ZSBmcm9tICd2dWUnO1xuLy8gaW1wb3J0IFN0eWxpemVyIGZyb20gJy4vc3R5bGl6ZXIudnVlJztcbi8vIGltcG9ydCAnb3dsLmNhcm91c2VsJztcblxuLy8gVnVlLmNvbXBvbmVudCgnU3R5bGl6ZXInLCBTdHlsaXplcik7XG5cbi8vIGNvbnN0IFN0eWxpemVyQ2xhc3MgPSBWdWUuZXh0ZW5kKFN0eWxpemVyKTtcbi8vIHdpbmRvdy5zdHlsaXplciA9IG5ldyBTdHlsaXplckNsYXNzKCk7XG4vLyB3aW5kb3cuc3R5bGl6ZXIuJG1vdW50KCk7XG4vLyB3aW5kb3cuZG9jdW1lbnQuYm9keS5hcHBlbmRDaGlsZCh3aW5kb3cuc3R5bGl6ZXIuJGVsKTtcblxuLy8gaW1wb3J0IFZ1ZUFnaWxlIGZyb20gJ3Z1ZS1hZ2lsZSdcbi8vIFZ1ZS51c2UoVnVlQWdpbGUpXG4vLyB3aW5kb3cuVnVlID0gVnVlO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///./js/main.js\n");

/***/ }),

/***/ 0:
/*!****************************************!*\
  !*** multi ./js/main.js ./css/app.css ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! /Users/newicon/Sites/newicon-website/themes/default/js/main.js */"./js/main.js");
module.exports = __webpack_require__(/*! /Users/newicon/Sites/newicon-website/themes/default/css/app.css */"./css/app.css");


/***/ })

/******/ });