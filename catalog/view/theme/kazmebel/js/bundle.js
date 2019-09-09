"use strict";

function animate(e) {
    if (this.href.match(/#/)) {
        var r = .2,
            i = window.pageYOffset,
            c = this.href.replace(/[^#]*(.*)/, "$1"),
            l = document.querySelector(c).getBoundingClientRect().top,
            s = null;
        requestAnimationFrame(function e(t) {
            null === s && (s = t);
            var o = t - s,
                n = l < 0 ? Math.max(i - o / r, i + l) : Math.min(i + o / r, i + l);
            window.scrollTo(0, n), n != i + l ? requestAnimationFrame(e) : location.hash = c
        })
    }
}
window.NodeList && !NodeList.prototype.forEach && (NodeList.prototype.forEach = function(e, t) {
    t = t || window;
    for (var o = 0; o < this.length; o++) e.call(t, this[o], o, this)
});
var linkNav = document.querySelectorAll("a");
if (linkNav.forEach(function(e) {
        return e.addEventListener("click", animate)
    }), function() {
        var t = document.querySelector(".js-counter-val"),
            e = document.querySelector(".js-counter-minus"),
            o = document.querySelector(".js-counter-plus");
        t && (e.onclick = function() {
            // var e = parseInt(t.innerHTML, 10);
            var e = parseInt(t.value, 10);
            // 1 < e && (t.innerHTML = e - 1)
            1 < e && (t.value = e - 1)
        }, o.onclick = function() {
            // var e = parseInt(t.innerHTML, 10);
            var e = parseInt(t.value, 10);
            // t.innerHTML = e + 1
            t.value = e + 1
        })
    }(), function() {
        var e = document.querySelectorAll(".js-filter");
        e && e.forEach(function(e) {
            e.querySelector(".js-filter-btn").onclick = function() {
                e.classList.toggle("active")
            }
        })
    }(), function() {
        var e = document.querySelectorAll(".js-lang");
        e && e.forEach(function(e) {
            e.querySelector(".js-lang-btn").onclick = function() {
                e.classList.toggle("active")
            }
        })
    }(), function() {
        var e = document.querySelectorAll(".js-location");
        e && e.forEach(function(e) {
            e.querySelector(".js-location-btn").onclick = function() {
                e.classList.toggle("active")
            }
        })
    }(), document.querySelector(".js-slider-main")) {
    var slider = tns({
        container: ".js-slider-main",
        items: 1,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1
    });
    document.querySelector(".js-slider-prev").onclick = function() {
        slider.goTo("prev")
    }, document.querySelector(".js-slider-next").onclick = function() {
        slider.goTo("next")
    }
}
if (document.querySelector(".js-slider-catalog")) {
    var slider2 = tns({
        container: ".js-slider-catalog",
        items: 1,
        gutter: 0,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1,
        responsive: {
            600: {
                gutter: 30,
                items: 2
            },
            900: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    });
    document.querySelector(".js-slider-catalog-prev").onclick = function() {
        slider2.goTo("prev")
    }, document.querySelector(".js-slider-catalog-next").onclick = function() {
        slider2.goTo("next")
    }
}
if (document.querySelector(".js-categories-slider")) {
    var slider3 = tns({
        container: ".js-categories-slider",
        items: 1,
        gutter: 0,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1,
        responsive: {
            400: {
                items: 2
            },
            600: {
                items: 3
            },
            800: {
                items: 4
            },
            1e3: {
                items: 5
            },
            1200: {
                items: 6
            }
        }
    });
    document.querySelector(".js-categories-slider-prev").onclick = function() {
        slider3.goTo("prev")
    }, document.querySelector(".js-categories-slider-next").onclick = function() {
        slider3.goTo("next")
    }
}
if (document.querySelector(".js-slider-sales")) {
    var slider4 = tns({
        container: ".js-slider-sales",
        items: 1,
        gutter: 30,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1,
        responsive: {
            600: {
                gutter: 30,
                items: 2
            },
            900: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    });
    document.querySelector(".js-slider-sales-prev").onclick = function() {
        slider4.goTo("prev")
    }, document.querySelector(".js-slider-sales-next").onclick = function() {
        slider4.goTo("next")
    }
}
if (document.querySelector(".js-gallery-slider")) {
    var slider5 = tns({
        container: ".js-gallery-slider",
        items: 1,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1
    });
    document.querySelector(".js-gallery-slider-prev").onclick = function() {
        slider5.goTo("prev")
    }, document.querySelector(".js-gallery-slider-next").onclick = function() {
        slider5.goTo("next")
    }
}
if (document.querySelector(".js-projects-slider")) {
    var slider6 = tns({
        container: ".js-projects-slider",
        items: 1,
        gutter: 0,
        autoplay: !0,
        autoplayTimeout: 3e3,
        autoplayButton: !1,
        autoplayButtonOutput: !1,
        controls: !1,
        nav: !1,
        responsive: {
            800: {
                gutter: 30,
                items: 2
            },
            1200: {
                items: 3
            }
        }
    });
    document.querySelector(".js-projects-slider-prev").onclick = function() {
        slider6.goTo("prev")
    }, document.querySelector(".js-projects-slider-next").onclick = function() {
        slider6.goTo("next")
    }
}! function() {
    var e = document.querySelector(".js-search"),
        t = document.querySelector(".js-search-btn");
    t && e && t.addEventListener("click", function() {
        e.classList.toggle("active")
    })
}();