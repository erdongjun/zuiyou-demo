! function(e, t) {
    var n = function(e) {
            return document.getElementById(e) },
        a = function(e) { e = e || document;
            var t = e.defaultView || e.parentWindow,
                n = e.compatMode,
                a = e.documentElement,
                o = t.innerHeight || 0,
                i = t.innerWidth || 0,
                d = t.pageXOffset || 0,
                s = t.pageYOffset || 0,
                r = a.scrollWidth,
                c = a.scrollHeight;
            return "CSS1Compat" != n && (a = e.body, r = a.scrollWidth, c = a.scrollHeight), n && (i = a.clientWidth, o = a.clientHeight), r = Math.max(r, i), c = Math.max(c, o), d = Math.max(d, e.documentElement.scrollLeft, e.body.scrollLeft), s = Math.max(s, e.documentElement.scrollTop, e.body.scrollTop), { width: i, height: o, scrollWidth: r, scrollHeight: c, scrollX: d, scrollY: s } },
        o = function(e) {
            var t = e.ownerDocument,
                n = a(t),
                o = n.scrollX,
                i = n.scrollY,
                d = e.getBoundingClientRect(),
                s = [d.left, d.top];
            return (i || o) && (s[0] += o, s[1] += i), s },
        i = function(e) {
            var t = o(e),
                n = t[0],
                a = t[1],
                i = e.offsetWidth,
                d = e.offsetHeight;
            return { width: i, height: d, left: n, top: a, bottom: a + d, right: n + i } },
        d = function() {
            var e = n("comments");
            if (e) {
                var t = function() {
                    var t = e.getAttribute("data-type"); "disqus" === t ? s() : "duoshuo" === t && r() };
                if (location.hash.indexOf("#comments") > -1) t();
                else var o = setInterval(function() {
                    var n = a(),
                        d = n.scrollY + n.height,
                        s = i(e).top;
                    Math.abs(s - d) < 1e3 && (t(), clearInterval(o)) }, 300) } },
        s = function() {
            var e = n("disqus_thread");
            if (e) { window.disqus_config = function() { this.page.url = e.getAttribute("data-url"), this.page.identifier = e.getAttribute("data-identifier") };
                var a = t.createElement("script");
                a.src = "//" + e.getAttribute("data-name") + ".disqus.com/embed.js", a.setAttribute("data-timestamp", +new Date), (t.head || t.body).appendChild(a) } },
        r = function() {
            var e = n("ds_thread");
            if (e) { window.duoshuoQuery = { short_name: e.getAttribute("data-name") };
                var a = document.createElement("script");
                a.src = "//static.duoshuo.com/embed.js", (t.head || t.body).appendChild(a) } };
    window.addEventListener("load", function() { d() });
    var c = { isMob: function() {
            for (var e = navigator.userAgent.toLowerCase(), t = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"], n = !1, a = 0; a < t.length; a++) e.indexOf(t[a].toLowerCase()) > -1 && (n = !0);
            return n }() };
    c.isMob ? document.documentElement.className += " mob" : document.documentElement.className += " pc";
    var l = { $sidebar: document.querySelector("#sidebar"), $main: document.querySelector("#main"), $sidebar_mask: document.querySelector("#sidebar-mask"), $body: document.body, $btn_side: document.querySelector("#header .btn-bar"), $article: document.querySelectorAll(".mob #page-index article") };
    l.bindEvent = function() {
        var e = this,
            t = "side",
            n = "click",
            a = "click";
        c.isMob && (n = "touchstart", a = "touchend"), this.$btn_side.addEventListener(a, function() { e.$body.className.indexOf(t) > -1 ? (e.$body.className = e.$body.className.replace(t, ""), e.$sidebar_mask.style.display = "none") : (e.$body.className += " " + t, e.$sidebar_mask.style.display = "block") }, !1), this.$sidebar_mask.addEventListener(n, function(n) { e.$body.className = e.$body.className.replace(t, ""), e.$sidebar_mask.style.display = "none", n.preventDefault() }, !1), window.addEventListener("resize", function() { e.$body.className = e.$body.className.replace(t, ""), e.$sidebar_mask.style.display = "none" }, !1) }, l.bindEvent() }(window, document);
