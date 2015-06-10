
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

var keymap = {
    "westurner.org": 'UA-46001060-1',
};

if (document.location.hostname in keymap) {
    var gajs_id = keymap[document.location.hostname];
    ga('create', gajs_id, 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
}


$(document).ready(function() {
    $("a[href^='http']").attr('target','_blank');
});

// <affix-sidenav>
$(document).ready(function() {
  $('#sidebar-wrapper').affix({
  });
})
// </affix-sidenav>
/*!
 * jQuery.scrollTo
 * Copyright (c) 2007-2015 Ariel Flesler - aflesler<a>gmail<d>com | http://flesler.blogspot.com
 * Licensed under MIT
 * http://flesler.blogspot.com/2007/10/jqueryscrollto.html
 * @projectDescription Lightweight, cross-browser and highly customizable animated scrolling with jQuery
 * @author Ariel Flesler
 * @version 2.1.1
 */
;(function(factory) {
	'use strict';
	if (typeof define === 'function' && define.amd) {
		// AMD
		define(['jquery'], factory);
	} else if (typeof module !== 'undefined' && module.exports) {
		// CommonJS
		module.exports = factory(require('jquery'));
	} else {
		// Global
		factory(jQuery);
	}
})(function($) {
	'use strict';

	var $scrollTo = $.scrollTo = function(target, duration, settings) {
		return $(window).scrollTo(target, duration, settings);
	};

	$scrollTo.defaults = {
		axis:'xy',
		duration: 0,
		limit:true
	};

	function isWin(elem) {
		return !elem.nodeName ||
			$.inArray(elem.nodeName.toLowerCase(), ['iframe','#document','html','body']) !== -1;
	}		

	$.fn.scrollTo = function(target, duration, settings) {
		if (typeof duration === 'object') {
			settings = duration;
			duration = 0;
		}
		if (typeof settings === 'function') {
			settings = { onAfter:settings };
		}
		if (target === 'max') {
			target = 9e9;
		}

		settings = $.extend({}, $scrollTo.defaults, settings);
		// Speed is still recognized for backwards compatibility
		duration = duration || settings.duration;
		// Make sure the settings are given right
		var queue = settings.queue && settings.axis.length > 1;
		if (queue) {
			// Let's keep the overall duration
			duration /= 2;
		}
		settings.offset = both(settings.offset);
		settings.over = both(settings.over);

		return this.each(function() {
			// Null target yields nothing, just like jQuery does
			if (target === null) return;

			var win = isWin(this),
				elem = win ? this.contentWindow || window : this,
				$elem = $(elem),
				targ = target, 
				attr = {},
				toff;

			switch (typeof targ) {
				// A number will pass the regex
				case 'number':
				case 'string':
					if (/^([+-]=?)?\d+(\.\d+)?(px|%)?$/.test(targ)) {
						targ = both(targ);
						// We are done
						break;
					}
					// Relative/Absolute selector
					targ = win ? $(targ) : $(targ, elem);
					if (!targ.length) return;
					/* falls through */
				case 'object':
					// DOMElement / jQuery
					if (targ.is || targ.style) {
						// Get the real position of the target
						toff = (targ = $(targ)).offset();
					}
			}

			var offset = $.isFunction(settings.offset) && settings.offset(elem, targ) || settings.offset;

			$.each(settings.axis.split(''), function(i, axis) {
				var Pos	= axis === 'x' ? 'Left' : 'Top',
					pos = Pos.toLowerCase(),
					key = 'scroll' + Pos,
					prev = $elem[key](),
					max = $scrollTo.max(elem, axis);

				if (toff) {// jQuery / DOMElement
					attr[key] = toff[pos] + (win ? 0 : prev - $elem.offset()[pos]);

					// If it's a dom element, reduce the margin
					if (settings.margin) {
						attr[key] -= parseInt(targ.css('margin'+Pos), 10) || 0;
						attr[key] -= parseInt(targ.css('border'+Pos+'Width'), 10) || 0;
					}

					attr[key] += offset[pos] || 0;

					if (settings.over[pos]) {
						// Scroll to a fraction of its width/height
						attr[key] += targ[axis === 'x'?'width':'height']() * settings.over[pos];
					}
				} else {
					var val = targ[pos];
					// Handle percentage values
					attr[key] = val.slice && val.slice(-1) === '%' ?
						parseFloat(val) / 100 * max
						: val;
				}

				// Number or 'number'
				if (settings.limit && /^\d+$/.test(attr[key])) {
					// Check the limits
					attr[key] = attr[key] <= 0 ? 0 : Math.min(attr[key], max);
				}

				// Don't waste time animating, if there's no need.
				if (!i && settings.axis.length > 1) {
					if (prev === attr[key]) {
						// No animation needed
						attr = {};
					} else if (queue) {
						// Intermediate animation
						animate(settings.onAfterFirst);
						// Don't animate this axis again in the next iteration.
						attr = {};
					}
				}
			});

			animate(settings.onAfter);

			function animate(callback) {
				var opts = $.extend({}, settings, {
					// The queue setting conflicts with animate()
					// Force it to always be true
					queue: true,
					duration: duration,
					complete: callback && function() {
						callback.call(elem, targ, settings);
					}
				});
				$elem.animate(attr, opts);
			}
		});
	};

	// Max scrolling position, works on quirks mode
	// It only fails (not too badly) on IE, quirks mode.
	$scrollTo.max = function(elem, axis) {
		var Dim = axis === 'x' ? 'Width' : 'Height',
			scroll = 'scroll'+Dim;

		if (!isWin(elem))
			return elem[scroll] - $(elem)[Dim.toLowerCase()]();

		var size = 'client' + Dim,
			doc = elem.ownerDocument || elem.document,
			html = doc.documentElement,
			body = doc.body;

		return Math.max(html[scroll], body[scroll]) - Math.min(html[size], body[size]);
	};

	function both(val) {
		return $.isFunction(val) || $.isPlainObject(val) ? val : { top:val, left:val };
	}

	// Add special hooks so that window scroll properties can be animated
	$.Tween.propHooks.scrollLeft = 
	$.Tween.propHooks.scrollTop = {
		get: function(t) {
			return $(t.elem)[t.prop]();
		},
		set: function(t) {
			var curr = this.get(t);
			// If interrupt is true and user scrolled, stop animating
			if (t.options.interrupt && t._last && t._last !== curr) {
				return $(t.elem).stop();
			}
			var next = Math.round(t.now);
			// Don't waste CPU
			// Browsers don't render floating point scroll
			if (curr !== next) {
				$(t.elem)[t.prop](next);
				t._last = this.get(t);
			}
		}
	};

	// AMD requirement
	return $scrollTo;
});
(function ($) {

    $.fn.isOnScreen = function(x, y){

        if(x == null || typeof x == 'undefined') x = 1;
        if(y == null || typeof y == 'undefined') y = 1;

        var win = $(window);

        var viewport = {
            top : win.scrollTop(),
            left : win.scrollLeft()
        };
        viewport.right = viewport.left + win.width();
        viewport.bottom = viewport.top + win.height();

        var height = this.outerHeight();
        var width = this.outerWidth();

        if(!width || !height){
            return false;
        }

        var bounds = this.offset();
        bounds.right = bounds.left + width;
        bounds.bottom = bounds.top + height;

        var visible = (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));

        if(!visible){
            return false;
        }

        var deltas = {
            top : Math.min( 1, ( bounds.bottom - viewport.top ) / height),
            bottom : Math.min(1, ( viewport.bottom - bounds.top ) / height),
            left : Math.min(1, ( bounds.right - viewport.left ) / width),
            right : Math.min(1, ( viewport.right - bounds.left ) / width)
        };

        return (deltas.left * deltas.right) >= x && (deltas.top * deltas.bottom) >= y;

    };

})(jQuery);


"use strict";

function navbar_scrollto(node) {
    var sidebar = $('#sidebar-wrapper').first()[0];
    var navbar = $(sidebar).find('div.sidebar').first()[0];

    if (sidebar && navbar) {
        var do_scroll = false;
        if ($(navbar).is(':visible')) {
            if ($.scrollTo) {
                do_scroll = true;
            } else {
                console.log('$.scrollTo not found');
            }
        }
        if (do_scroll) {
            // console.log("scrollTo", node);
            if (!($(node).isOnScreen())) {
                $(sidebar).scrollTo($(node), {
                    axis: 'y',
                    offset: { top: -100 }
                });
            }
        }
    } else {
        console.log('sidebar is', sidebar);
        console.log('navbar is', navbar);
    }
}
function navbar_update(nodeurl) {
    var content = $('#content-wrapper');
    var navbar = $('#sidebar-wrapper').find('div.sidebar').first()[0];
    ($(content)
        .find('a.headerlink.youarehere')
        .removeClass('youarehere')
        .text('¶')
    );
    ($('#navbar-top')
        .find('a.reference.internal')
        .removeClass('youarehere')
    );
    $(navbar).find('a.youarehere').removeClass('youarehere');
    if (nodeurl) {
        ($(content)
            .find('a.headerlink[href="' + nodeurl + '"]')
            .addClass('youarehere')
            .text('⬅')
        );

        ($('#navbar-top')
            .find('a.reference.internal[href="' + nodeurl + '"]')
            .addClass('youarehere')
        );

        var navbarlink = $(navbar).find('a[href="' + nodeurl + '"]');

        if (navbarlink) {
            navbarlink.addClass('youarehere');
            navbar_scrollto(navbarlink); // # navbar a.youarehere
        } else {
            console.log("nodeurl not found");
            console.log(nodeurl);
        }
    } else {
        console.log("nodeurl is false");
        console.log(nodeurl);
    }
}

function navbar__remap_sphinx_toc_links() {
    var content = $('#content-wrapper');
    ($(content)
        .find('a.headerlink')
        .map(function(i, node) {
            // console.log(i, node);
            $(node.previousSibling).attr('href', $(node).attr('href'));
        })
    );
}

function navbar__add_top_button() {
    ($('<button type="button" class="toplink navbar-toggle"><a href="#" title="Top"><span>^</span></a></button>')
     .appendTo('body'));
}

function navbar_init() {
    // require('jquery.scrollto')
    //var scriptstr = '<script src="https://cdn.jsdelivr.net/jquery.scrollto/2.1.0/jquery.scrollTo.min.js"></script>';
    //$(scriptstr).appendTo("head");
    navbar_update(window.location.hash);

    navbar__remap_sphinx_toc_links();
    navbar__add_top_button();

    window.onhashchange = function(e) {
        // console.log(e); // e.newURL , e.oldURL
        var loc_hash_url = window.location.hash;
        console.log(loc_hash_url);
        if (loc_hash_url != false) {
            navbar_update(loc_hash_url);
        };
    };
}


$(document).ready(navbar_init);
