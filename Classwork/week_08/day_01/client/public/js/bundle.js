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
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
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
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./client/src/app.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./client/src/app.js":
/*!***************************!*\
  !*** ./client/src/app.js ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("const FormView = __webpack_require__(/*! ./views/form_view.js */ \"./client/src/views/form_view.js\");\nconst LyricsView = __webpack_require__(/*! ./views/lyrics_view.js */ \"./client/src/views/lyrics_view.js\");\nconst PubSub = __webpack_require__(/*! ./helpers/pub_sub.js */ \"./client/src/helpers/pub_sub.js\");\n\ndocument.addEventListener('DOMContentLoaded', function () {\n  const form = document.querySelector('form');\n  const formView = new FormView(form);\n  formView.bindListeners();\n\n  const lyricsContainer = document.querySelector('#lyrics-container');\n  const lyricsView = new LyricsView(lyricsContainer);\n\n  PubSub.subscribe('FormView:request-complete', (event) => {\n    lyricsView.render(event.detail);\n  });\n});\n\n\n//# sourceURL=webpack:///./client/src/app.js?");

/***/ }),

/***/ "./client/src/helpers/pub_sub.js":
/*!***************************************!*\
  !*** ./client/src/helpers/pub_sub.js ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("const PubSub = {\n  publish: function (channel, payload) {\n    const event = new CustomEvent(channel, {\n      detail: payload\n    });\n    document.dispatchEvent(event);\n  },\n\n  subscribe: function (channel, callback) {\n    document.addEventListener(channel, callback);\n  }\n};\n\nmodule.exports = PubSub;\n\n\n//# sourceURL=webpack:///./client/src/helpers/pub_sub.js?");

/***/ }),

/***/ "./client/src/views/form_view.js":
/*!***************************************!*\
  !*** ./client/src/views/form_view.js ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("const PubSub = __webpack_require__(/*! ../helpers/pub_sub.js */ \"./client/src/helpers/pub_sub.js\");\n\nconst FormView = function (element) {\n  this.element = element;\n}\n\nFormView.prototype.bindListeners = function () {\n  this.element.addEventListener('submit', function (evt) {\n    evt.preventDefault();\n\n    const artist = evt.target.artist.value;\n    const title = evt.target.title.value;\n\n    fetch(`https://api.lyrics.ovh/v1/${ artist }/${ title }`)\n      .then(res => res.json())\n      .then(data => PubSub.publish('FormView:request-complete', data.lyrics));\n\n    evt.target.artist.value = '';\n    evt.target.title.value = '';\n  });\n}\n\nmodule.exports = FormView;\n\n\n//# sourceURL=webpack:///./client/src/views/form_view.js?");

/***/ }),

/***/ "./client/src/views/lyrics_view.js":
/*!*****************************************!*\
  !*** ./client/src/views/lyrics_view.js ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("const LyricsView = function (container) {\n  this.container = container;\n}\n\nLyricsView.prototype.render = function (lyrics) {\n  this.container.innerHTML = '';\n  this.container.innerText = lyrics;\n}\n\nmodule.exports = LyricsView;\n\n\n//# sourceURL=webpack:///./client/src/views/lyrics_view.js?");

/***/ })

/******/ });