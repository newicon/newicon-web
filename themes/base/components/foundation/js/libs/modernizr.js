/*! modernizr 3.3.1 (Custom Build) | MIT *
 * https://modernizr.com/download/?-applicationcache-audio-backgroundsize-borderimage-borderradius-boxshadow-canvas-canvastext-cssanimations-csscolumns-cssgradients-cssreflections-csstransforms-csstransforms3d-csstransitions-flexbox-flexboxlegacy-fontface-generatedcontent-geolocation-hashchange-history-hsla-inlinesvg-input-inputtypes-localstorage-multiplebgs-opacity-placeholder-rgba-sessionstorage-smil-svg-svgclippaths-textshadow-touchevents-video-videoautoplay-websqldatabase-webworkers-domprefixes-hasevent-prefixes-setclasses-shiv-testallprops-testprop-teststyles !*/
! function(e, t, A) {
	function n(e, t) {
		return typeof e === t
	}

	function o() {
		var e, t, A, o, a, r, i;
		for (var s in T)
			if (T.hasOwnProperty(s)) {
				if (e = [], t = T[s], t.name && (e.push(t.name.toLowerCase()), t.options && t.options.aliases && t.options.aliases.length))
					for (A = 0; A < t.options.aliases.length; A++) e.push(t.options.aliases[A].toLowerCase());
				for (o = n(t.fn, "function") ? t.fn() : t.fn, a = 0; a < e.length; a++) r = e[a], i = r.split("."), 1 === i.length ? Modernizr[i[0]] = o : (!Modernizr[i[0]] || Modernizr[i[0]] instanceof Boolean || (Modernizr[i[0]] = new Boolean(Modernizr[i[0]])), Modernizr[i[0]][i[1]] = o), y.push((o ? "" : "no-") + i.join("-"))
			}
	}

	function a(e) {
		var t = b.className,
			A = Modernizr._config.classPrefix || "";
		if (x && (t = t.baseVal), Modernizr._config.enableJSClass) {
			var n = new RegExp("(^|\\s)" + A + "no-js(\\s|$)");
			t = t.replace(n, "$1" + A + "js$2")
		}
		Modernizr._config.enableClasses && (t += " " + A + e.join(" " + A), x ? b.className.baseVal = t : b.className = t)
	}

	function r() {
		return "function" != typeof t.createElement ? t.createElement(arguments[0]) : x ? t.createElementNS.call(t, "http://www.w3.org/2000/svg", arguments[0]) : t.createElement.apply(t, arguments)
	}

	function i(e, t) {
		return !!~("" + e).indexOf(t)
	}

	function s(e) {
		return e.replace(/([a-z])-([a-z])/g, function(e, t, A) {
			return t + A.toUpperCase()
		}).replace(/^-/, "")
	}

	function l() {
		var e = t.body;
		return e || (e = r(x ? "svg" : "body"), e.fake = !0), e
	}

	function c(e, A, n, o) {
		var a, i, s, c, d = "modernizr",
			u = r("div"),
			p = l();
		if (parseInt(n, 10))
			for (; n--;) s = r("div"), s.id = o ? o[n] : d + (n + 1), u.appendChild(s);
		return a = r("style"), a.type = "text/css", a.id = "s" + d, (p.fake ? p : u).appendChild(a), p.appendChild(u), a.styleSheet ? a.styleSheet.cssText = e : a.appendChild(t.createTextNode(e)), u.id = d, p.fake && (p.style.background = "", p.style.overflow = "hidden", c = b.style.overflow, b.style.overflow = "hidden", b.appendChild(p)), i = A(u, e), p.fake ? (p.parentNode.removeChild(p), b.style.overflow = c, b.offsetHeight) : u.parentNode.removeChild(u), !!i
	}

	function d(e, t) {
		if ("object" == typeof e)
			for (var A in e) I(e, A) && d(A, e[A]);
		else {
			e = e.toLowerCase();
			var n = e.split("."),
				o = Modernizr[n[0]];
			if (2 == n.length && (o = o[n[1]]), "undefined" != typeof o) return Modernizr;
			t = "function" == typeof t ? t() : t, 1 == n.length ? Modernizr[n[0]] = t : (!Modernizr[n[0]] || Modernizr[n[0]] instanceof Boolean || (Modernizr[n[0]] = new Boolean(Modernizr[n[0]])), Modernizr[n[0]][n[1]] = t), a([(t && 0 != t ? "" : "no-") + n.join("-")]), Modernizr._trigger(e, t)
		}
		return Modernizr
	}

	function u(e, t) {
		return function() {
			return e.apply(t, arguments)
		}
	}

	function p(e, t, A) {
		var o;
		for (var a in e)
			if (e[a] in t) return A === !1 ? e[a] : (o = t[e[a]], n(o, "function") ? u(o, A || t) : o);
		return !1
	}

	function f(e) {
		return e.replace(/([A-Z])/g, function(e, t) {
			return "-" + t.toLowerCase()
		}).replace(/^ms-/, "-ms-")
	}

	function h(t, n) {
		var o = t.length;
		if ("CSS" in e && "supports" in e.CSS) {
			for (; o--;)
				if (e.CSS.supports(f(t[o]), n)) return !0;
			return !1
		}
		if ("CSSSupportsRule" in e) {
			for (var a = []; o--;) a.push("(" + f(t[o]) + ":" + n + ")");
			return a = a.join(" or "), c("@supports (" + a + ") { #modernizr { position: absolute; } }", function(e) {
				return "absolute" == getComputedStyle(e, null).position
			})
		}
		return A
	}

	function m(e, t, o, a) {
		function l() {
			d && (delete D.style, delete D.modElem)
		}
		if (a = n(a, "undefined") ? !1 : a, !n(o, "undefined")) {
			var c = h(e, o);
			if (!n(c, "undefined")) return c
		}
		for (var d, u, p, f, m, g = ["modernizr", "tspan", "samp"]; !D.style && g.length;) d = !0, D.modElem = r(g.shift()), D.style = D.modElem.style;
		for (p = e.length, u = 0; p > u; u++)
			if (f = e[u], m = D.style[f], i(f, "-") && (f = s(f)), D.style[f] !== A) {
				if (a || n(o, "undefined")) return l(), "pfx" == t ? f : !0;
				try {
					D.style[f] = o
				} catch (v) {}
				if (D.style[f] != m) return l(), "pfx" == t ? f : !0
			}
		return l(), !1
	}

	function g(e, t, A, o, a) {
		var r = e.charAt(0).toUpperCase() + e.slice(1),
			i = (e + " " + V.join(r + " ") + r).split(" ");
		return n(t, "string") || n(t, "undefined") ? m(i, t, o, a) : (i = (e + " " + C.join(r + " ") + r).split(" "), p(i, t, A))
	}

	function v(e, t, n) {
		return g(e, A, A, t, n)
	}
	var y = [],
		T = [],
		w = {
			_version: "3.3.1",
			_config: {
				classPrefix: "",
				enableClasses: !0,
				enableJSClass: !0,
				usePrefixes: !0
			},
			_q: [],
			on: function(e, t) {
				var A = this;
				setTimeout(function() {
					t(A[e])
				}, 0)
			},
			addTest: function(e, t, A) {
				T.push({
					name: e,
					fn: t,
					options: A
				})
			},
			addAsyncTest: function(e) {
				T.push({
					name: null,
					fn: e
				})
			}
		},
		Modernizr = function() {};
	Modernizr.prototype = w, Modernizr = new Modernizr, Modernizr.addTest("applicationcache", "applicationCache" in e), Modernizr.addTest("geolocation", "geolocation" in navigator), Modernizr.addTest("history", function() {
		var t = navigator.userAgent;
		return -1 === t.indexOf("Android 2.") && -1 === t.indexOf("Android 4.0") || -1 === t.indexOf("Mobile Safari") || -1 !== t.indexOf("Chrome") || -1 !== t.indexOf("Windows Phone") ? e.history && "pushState" in e.history : !1
	}), Modernizr.addTest("svg", !!t.createElementNS && !!t.createElementNS("http://www.w3.org/2000/svg", "svg").createSVGRect), Modernizr.addTest("localstorage", function() {
		var e = "modernizr";
		try {
			return localStorage.setItem(e, e), localStorage.removeItem(e), !0
		} catch (t) {
			return !1
		}
	}), Modernizr.addTest("sessionstorage", function() {
		var e = "modernizr";
		try {
			return sessionStorage.setItem(e, e), sessionStorage.removeItem(e), !0
		} catch (t) {
			return !1
		}
	}), Modernizr.addTest("websqldatabase", "openDatabase" in e), Modernizr.addTest("webworkers", "Worker" in e);
	var E = w._config.usePrefixes ? " -webkit- -moz- -o- -ms- ".split(" ") : ["", ""];
	w._prefixes = E;
	var b = t.documentElement,
		x = "svg" === b.nodeName.toLowerCase();
	x || ! function(e, t) {
		function A(e, t) {
			var A = e.createElement("p"),
				n = e.getElementsByTagName("head")[0] || e.documentElement;
			return A.innerHTML = "x<style>" + t + "</style>", n.insertBefore(A.lastChild, n.firstChild)
		}

		function n() {
			var e = y.elements;
			return "string" == typeof e ? e.split(" ") : e
		}

		function o(e, t) {
			var A = y.elements;
			"string" != typeof A && (A = A.join(" ")), "string" != typeof e && (e = e.join(" ")), y.elements = A + " " + e, l(t)
		}

		function a(e) {
			var t = v[e[m]];
			return t || (t = {}, g++, e[m] = g, v[g] = t), t
		}

		function r(e, A, n) {
			if (A || (A = t), d) return A.createElement(e);
			n || (n = a(A));
			var o;
			return o = n.cache[e] ? n.cache[e].cloneNode() : h.test(e) ? (n.cache[e] = n.createElem(e)).cloneNode() : n.createElem(e), !o.canHaveChildren || f.test(e) || o.tagUrn ? o : n.frag.appendChild(o)
		}

		function i(e, A) {
			if (e || (e = t), d) return e.createDocumentFragment();
			A = A || a(e);
			for (var o = A.frag.cloneNode(), r = 0, i = n(), s = i.length; s > r; r++) o.createElement(i[r]);
			return o
		}

		function s(e, t) {
			t.cache || (t.cache = {}, t.createElem = e.createElement, t.createFrag = e.createDocumentFragment, t.frag = t.createFrag()), e.createElement = function(A) {
				return y.shivMethods ? r(A, e, t) : t.createElem(A)
			}, e.createDocumentFragment = Function("h,f", "return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&(" + n().join().replace(/[\w\-:]+/g, function(e) {
				return t.createElem(e), t.frag.createElement(e), 'c("' + e + '")'
			}) + ");return n}")(y, t.frag)
		}

		function l(e) {
			e || (e = t);
			var n = a(e);
			return !y.shivCSS || c || n.hasCSS || (n.hasCSS = !!A(e, "article,aside,dialog,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}")), d || s(e, n), e
		}
		var c, d, u = "3.7.3",
			p = e.html5 || {},
			f = /^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,
			h = /^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,
			m = "_html5shiv",
			g = 0,
			v = {};
		! function() {
			try {
				var e = t.createElement("a");
				e.innerHTML = "<xyz></xyz>", c = "hidden" in e, d = 1 == e.childNodes.length || function() {
					t.createElement("a");
					var e = t.createDocumentFragment();
					return "undefined" == typeof e.cloneNode || "undefined" == typeof e.createDocumentFragment || "undefined" == typeof e.createElement
				}()
			} catch (A) {
				c = !0, d = !0
			}
		}();
		var y = {
			elements: p.elements || "abbr article aside audio bdi canvas data datalist details dialog figcaption figure footer header hgroup main mark meter nav output picture progress section summary template time video",
			version: u,
			shivCSS: p.shivCSS !== !1,
			supportsUnknownElements: d,
			shivMethods: p.shivMethods !== !1,
			type: "default",
			shivDocument: l,
			createElement: r,
			createDocumentFragment: i,
			addElements: o
		};
		e.html5 = y, l(t), "object" == typeof module && module.exports && (module.exports = y)
	}("undefined" != typeof e ? e : this, t);
	var R = "Moz O ms Webkit",
		C = w._config.usePrefixes ? R.toLowerCase().split(" ") : [];
	w._domPrefixes = C;
	var B = function() {
		function e(e, t) {
			var o;
			return e ? (t && "string" != typeof t || (t = r(t || "div")), e = "on" + e, o = e in t, !o && n && (t.setAttribute || (t = r("div")), t.setAttribute(e, ""), o = "function" == typeof t[e], t[e] !== A && (t[e] = A), t.removeAttribute(e)), o) : !1
		}
		var n = !("onblur" in t.documentElement);
		return e
	}();
	w.hasEvent = B, Modernizr.addTest("hashchange", function() {
		return B("hashchange", e) === !1 ? !1 : t.documentMode === A || t.documentMode > 7
	}), Modernizr.addTest("audio", function() {
		var e = r("audio"),
			t = !1;
		try {
			(t = !!e.canPlayType) && (t = new Boolean(t), t.ogg = e.canPlayType('audio/ogg; codecs="vorbis"').replace(/^no$/, ""), t.mp3 = e.canPlayType('audio/mpeg; codecs="mp3"').replace(/^no$/, ""), t.opus = e.canPlayType('audio/ogg; codecs="opus"') || e.canPlayType('audio/webm; codecs="opus"').replace(/^no$/, ""), t.wav = e.canPlayType('audio/wav; codecs="1"').replace(/^no$/, ""), t.m4a = (e.canPlayType("audio/x-m4a;") || e.canPlayType("audio/aac;")).replace(/^no$/, ""))
		} catch (A) {}
		return t
	}), Modernizr.addTest("canvas", function() {
		var e = r("canvas");
		return !(!e.getContext || !e.getContext("2d"))
	}), Modernizr.addTest("canvastext", function() {
		return Modernizr.canvas === !1 ? !1 : "function" == typeof r("canvas").getContext("2d").fillText
	}), Modernizr.addTest("video", function() {
		var e = r("video"),
			t = !1;
		try {
			(t = !!e.canPlayType) && (t = new Boolean(t), t.ogg = e.canPlayType('video/ogg; codecs="theora"').replace(/^no$/, ""), t.h264 = e.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/, ""), t.webm = e.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/, ""), t.vp9 = e.canPlayType('video/webm; codecs="vp9"').replace(/^no$/, ""), t.hls = e.canPlayType('application/x-mpegURL; codecs="avc1.42E01E"').replace(/^no$/, ""))
		} catch (A) {}
		return t
	}), Modernizr.addTest("cssgradients", function() {
		for (var e, t = "background-image:", A = "gradient(linear,left top,right bottom,from(#9f9),to(white));", n = "", o = 0, a = E.length - 1; a > o; o++) e = 0 === o ? "to " : "", n += t + E[o] + "linear-gradient(" + e + "left top, #9f9, white);";
		Modernizr._config.usePrefixes && (n += t + "-webkit-" + A);
		var i = r("a"),
			s = i.style;
		return s.cssText = n, ("" + s.backgroundImage).indexOf("gradient") > -1
	}), Modernizr.addTest("multiplebgs", function() {
		var e = r("a").style;
		return e.cssText = "background:url(https://),url(https://),red url(https://)", /(url\s*\(.*?){3}/.test(e.background)
	}), Modernizr.addTest("opacity", function() {
		var e = r("a").style;
		return e.cssText = E.join("opacity:.55;"), /^0.55$/.test(e.opacity)
	}), Modernizr.addTest("rgba", function() {
		var e = r("a").style;
		return e.cssText = "background-color:rgba(150,255,150,.5)", ("" + e.backgroundColor).indexOf("rgba") > -1
	}), Modernizr.addTest("placeholder", "placeholder" in r("input") && "placeholder" in r("textarea")), Modernizr.addTest("inlinesvg", function() {
		var e = r("div");
		return e.innerHTML = "<svg/>", "http://www.w3.org/2000/svg" == ("undefined" != typeof SVGRect && e.firstChild && e.firstChild.namespaceURI)
	});
	var F = r("input"),
		S = "autocomplete autofocus list placeholder max min multiple pattern required step".split(" "),
		G = {};
	Modernizr.input = function(t) {
		for (var A = 0, n = t.length; n > A; A++) G[t[A]] = !!(t[A] in F);
		return G.list && (G.list = !(!r("datalist") || !e.HTMLDataListElement)), G
	}(S);
	var k = "search tel url email datetime date month week time datetime-local number range color".split(" "),
		P = {};
	Modernizr.inputtypes = function(e) {
		for (var n, o, a, r = e.length, i = "1)", s = 0; r > s; s++) F.setAttribute("type", n = e[s]), a = "text" !== F.type && "style" in F, a && (F.value = i, F.style.cssText = "position:absolute;visibility:hidden;", /^range$/.test(n) && F.style.WebkitAppearance !== A ? (b.appendChild(F), o = t.defaultView, a = o.getComputedStyle && "textfield" !== o.getComputedStyle(F, null).WebkitAppearance && 0 !== F.offsetHeight, b.removeChild(F)) : /^(search|tel)$/.test(n) || (a = /^(url|email)$/.test(n) ? F.checkValidity && F.checkValidity() === !1 : F.value != i)), P[e[s]] = !!a;
		return P
	}(k), Modernizr.addTest("hsla", function() {
		var e = r("a").style;
		return e.cssText = "background-color:hsla(120,40%,100%,.5)", i(e.backgroundColor, "rgba") || i(e.backgroundColor, "hsla")
	});
	var Q = "CSS" in e && "supports" in e.CSS,
		M = "supportsCSS" in e;
	Modernizr.addTest("supports", Q || M);
	var Z = {}.toString;
	Modernizr.addTest("svgclippaths", function() {
		return !!t.createElementNS && /SVGClipPath/.test(Z.call(t.createElementNS("http://www.w3.org/2000/svg", "clipPath")))
	}), Modernizr.addTest("smil", function() {
		return !!t.createElementNS && /SVGAnimate/.test(Z.call(t.createElementNS("http://www.w3.org/2000/svg", "animate")))
	});
	var V = w._config.usePrefixes ? R.split(" ") : [];
	w._cssomPrefixes = V;
	var Y = w.testStyles = c;
	Modernizr.addTest("touchevents", function() {
		var A;
		if ("ontouchstart" in e || e.DocumentTouch && t instanceof DocumentTouch) A = !0;
		else {
			var n = ["@media (", E.join("touch-enabled),("), "heartz", ")", "{#modernizr{top:9px;position:absolute}}"].join("");
			Y(n, function(e) {
				A = 9 === e.offsetTop
			})
		}
		return A
	});
	var N = function() {
		var e = navigator.userAgent,
			t = e.match(/applewebkit\/([0-9]+)/gi) && parseFloat(RegExp.$1),
			A = e.match(/w(eb)?osbrowser/gi),
			n = e.match(/windows phone/gi) && e.match(/iemobile\/([0-9])+/gi) && parseFloat(RegExp.$1) >= 9,
			o = 533 > t && e.match(/android/gi);
		return A || o || n
	}();
	N ? Modernizr.addTest("fontface", !1) : Y('@font-face {font-family:"font";src:url("https://")}', function(e, A) {
		var n = t.getElementById("smodernizr"),
			o = n.sheet || n.styleSheet,
			a = o ? o.cssRules && o.cssRules[0] ? o.cssRules[0].cssText : o.cssText || "" : "",
			r = /src/i.test(a) && 0 === a.indexOf(A.split(" ")[0]);
		Modernizr.addTest("fontface", r)
	}), Y('#modernizr{font:0/0 a}#modernizr:after{content:":)";visibility:hidden;font:7px/1 a}', function(e) {
		Modernizr.addTest("generatedcontent", e.offsetHeight >= 7)
	});
	var I;
	! function() {
		var e = {}.hasOwnProperty;
		I = n(e, "undefined") || n(e.call, "undefined") ? function(e, t) {
			return t in e && n(e.constructor.prototype[t], "undefined")
		} : function(t, A) {
			return e.call(t, A)
		}
	}(), w._l = {}, w.on = function(e, t) {
		this._l[e] || (this._l[e] = []), this._l[e].push(t), Modernizr.hasOwnProperty(e) && setTimeout(function() {
			Modernizr._trigger(e, Modernizr[e])
		}, 0)
	}, w._trigger = function(e, t) {
		if (this._l[e]) {
			var A = this._l[e];
			setTimeout(function() {
				var e, n;
				for (e = 0; e < A.length; e++)(n = A[e])(t)
			}, 0), delete this._l[e]
		}
	}, Modernizr._q.push(function() {
		w.addTest = d
	}), Modernizr.addAsyncTest(function() {
		function e(r) {
			o++, clearTimeout(t);
			var i = r && "playing" === r.type || 0 !== a.currentTime;
			return !i && n > o ? void(t = setTimeout(e, A)) : (a.removeEventListener("playing", e, !1), d("videoautoplay", i), void a.parentNode.removeChild(a))
		}
		var t, A = 200,
			n = 5,
			o = 0,
			a = r("video"),
			i = a.style;
		if (!(Modernizr.video && "autoplay" in a)) return void d("videoautoplay", !1);
		i.position = "absolute", i.height = 0, i.width = 0;
		try {
			if (Modernizr.video.ogg) a.src = "data:video/ogg;base64,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";
			else {
				if (!Modernizr.video.h264) return void d("videoautoplay", !1);
				a.src = "data:video/mp4;base64,AAAAIGZ0eXBpc29tAAACAGlzb21pc28yYXZjMW1wNDEAAAAIZnJlZQAAAs1tZGF0AAACrgYF//+q3EXpvebZSLeWLNgg2SPu73gyNjQgLSBjb3JlIDE0OCByMjYwMSBhMGNkN2QzIC0gSC4yNjQvTVBFRy00IEFWQyBjb2RlYyAtIENvcHlsZWZ0IDIwMDMtMjAxNSAtIGh0dHA6Ly93d3cudmlkZW9sYW4ub3JnL3gyNjQuaHRtbCAtIG9wdGlvbnM6IGNhYmFjPTEgcmVmPTMgZGVibG9jaz0xOjA6MCBhbmFseXNlPTB4MzoweDExMyBtZT1oZXggc3VibWU9NyBwc3k9MSBwc3lfcmQ9MS4wMDowLjAwIG1peGVkX3JlZj0xIG1lX3JhbmdlPTE2IGNocm9tYV9tZT0xIHRyZWxsaXM9MSA4eDhkY3Q9MSBjcW09MCBkZWFkem9uZT0yMSwxMSBmYXN0X3Bza2lwPTEgY2hyb21hX3FwX29mZnNldD0tMiB0aHJlYWRzPTEgbG9va2FoZWFkX3RocmVhZHM9MSBzbGljZWRfdGhyZWFkcz0wIG5yPTAgZGVjaW1hdGU9MSBpbnRlcmxhY2VkPTAgYmx1cmF5X2NvbXBhdD0wIGNvbnN0cmFpbmVkX2ludHJhPTAgYmZyYW1lcz0zIGJfcHlyYW1pZD0yIGJfYWRhcHQ9MSBiX2JpYXM9MCBkaXJlY3Q9MSB3ZWlnaHRiPTEgb3Blbl9nb3A9MCB3ZWlnaHRwPTIga2V5aW50PTI1MCBrZXlpbnRfbWluPTEwIHNjZW5lY3V0PTQwIGludHJhX3JlZnJlc2g9MCByY19sb29rYWhlYWQ9NDAgcmM9Y3JmIG1idHJlZT0xIGNyZj0yMy4wIHFjb21wPTAuNjAgcXBtaW49MCBxcG1heD02OSBxcHN0ZXA9NCBpcF9yYXRpbz0xLjQwIGFxPTE6MS4wMACAAAAAD2WIhAA3//728P4FNjuZQQAAAu5tb292AAAAbG12aGQAAAAAAAAAAAAAAAAAAAPoAAAAZAABAAABAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAACGHRyYWsAAABcdGtoZAAAAAMAAAAAAAAAAAAAAAEAAAAAAAAAZAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAEAAAAAAAgAAAAIAAAAAACRlZHRzAAAAHGVsc3QAAAAAAAAAAQAAAGQAAAAAAAEAAAAAAZBtZGlhAAAAIG1kaGQAAAAAAAAAAAAAAAAAACgAAAAEAFXEAAAAAAAtaGRscgAAAAAAAAAAdmlkZQAAAAAAAAAAAAAAAFZpZGVvSGFuZGxlcgAAAAE7bWluZgAAABR2bWhkAAAAAQAAAAAAAAAAAAAAJGRpbmYAAAAcZHJlZgAAAAAAAAABAAAADHVybCAAAAABAAAA+3N0YmwAAACXc3RzZAAAAAAAAAABAAAAh2F2YzEAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAgACAEgAAABIAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAY//8AAAAxYXZjQwFkAAr/4QAYZ2QACqzZX4iIhAAAAwAEAAADAFA8SJZYAQAGaOvjyyLAAAAAGHN0dHMAAAAAAAAAAQAAAAEAAAQAAAAAHHN0c2MAAAAAAAAAAQAAAAEAAAABAAAAAQAAABRzdHN6AAAAAAAAAsUAAAABAAAAFHN0Y28AAAAAAAAAAQAAADAAAABidWR0YQAAAFptZXRhAAAAAAAAACFoZGxyAAAAAAAAAABtZGlyYXBwbAAAAAAAAAAAAAAAAC1pbHN0AAAAJal0b28AAAAdZGF0YQAAAAEAAAAATGF2ZjU2LjQwLjEwMQ=="
			}
		} catch (s) {
			return void d("videoautoplay", !1)
		}
		a.setAttribute("autoplay", ""), a.style.cssText = "display:none", b.appendChild(a), setTimeout(function() {
			a.addEventListener("playing", e, !1), t = setTimeout(e, A)
		}, 0)
	});
	var U = {
		elem: r("modernizr")
	};
	Modernizr._q.push(function() {
		delete U.elem
	});
	var D = {
		style: U.elem.style
	};
	Modernizr._q.unshift(function() {
		delete D.style
	});
	var H = w.testProp = function(e, t, n) {
		return m([e], A, t, n)
	};
	Modernizr.addTest("textshadow", H("textShadow", "1px 1px")), w.testAllProps = g, w.testAllProps = v, Modernizr.addTest("cssanimations", v("animationName", "a", !0)), Modernizr.addTest("backgroundsize", v("backgroundSize", "100%", !0)), Modernizr.addTest("borderimage", v("borderImage", "url() 1", !0)), Modernizr.addTest("borderradius", v("borderRadius", "0px", !0)), Modernizr.addTest("boxshadow", v("boxShadow", "1px 1px", !0)),
		function() {
			Modernizr.addTest("csscolumns", function() {
				var e = !1,
					t = v("columnCount");
				try {
					(e = !!t) && (e = new Boolean(e))
				} catch (A) {}
				return e
			});
			for (var e, t, A = ["Width", "Span", "Fill", "Gap", "Rule", "RuleColor", "RuleStyle", "RuleWidth", "BreakBefore", "BreakAfter", "BreakInside"], n = 0; n < A.length; n++) e = A[n].toLowerCase(), t = v("column" + A[n]), ("breakbefore" === e || "breakafter" === e || "breakinside" == e) && (t = t || v(A[n])), Modernizr.addTest("csscolumns." + e, t)
		}(), Modernizr.addTest("flexbox", v("flexBasis", "1px", !0)), Modernizr.addTest("flexboxlegacy", v("boxDirection", "reverse", !0)), Modernizr.addTest("cssreflections", v("boxReflect", "above", !0)), Modernizr.addTest("csstransforms", function() {
			return -1 === navigator.userAgent.indexOf("Android 2.") && v("transform", "scale(1)", !0)
		}), Modernizr.addTest("csstransforms3d", function() {
			var e = !!v("perspective", "1px", !0),
				t = Modernizr._config.usePrefixes;
			if (e && (!t || "webkitPerspective" in b.style)) {
				var A, n = "#modernizr{width:0;height:0}";
				Modernizr.supports ? A = "@supports (perspective: 1px)" : (A = "@media (transform-3d)", t && (A += ",(-webkit-transform-3d)")), A += "{#modernizr{width:7px;height:18px;margin:0;padding:0;border:0}}", Y(n + A, function(t) {
					e = 7 === t.offsetWidth && 18 === t.offsetHeight
				})
			}
			return e
		}), Modernizr.addTest("csstransitions", v("transition", "all", !0)), o(), a(y), delete w.addTest, delete w.addAsyncTest;
	for (var j = 0; j < Modernizr._q.length; j++) Modernizr._q[j]();
	e.Modernizr = Modernizr
}(window, document);