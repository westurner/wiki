
/**
 * linkstyles.js - Shorten URLs
 */

/**
 * Strip ^https:// from links
 * @param {Number} i - positional index from a map expression
 * @param {HTMLElement} - link element to modify
 */
function striphttps(i, link) {
    if (link.text.startsWith('https://')) { link.text = link.text.substring(8); }
}

/**
 * Strip 'en.wikipedia.org/wiki/[Category:?]' from links and,
 * move 'Wikipedia:' and 'WikipediaCategory:' into the link if present
 * @param {Number} i - positional index from a map expression
 * @param {HTMLElement} - link element to modify
 */
function stripenwikipedia(i, link) {
    if (link.text.startsWith('en.wikipedia.org/wiki/')) {
        if (link.text.startsWith('en.wikipedia.org/wiki/Category:')) {
            link.text = "Wikipedia Category: " + link.text.substring(31);
        } else {
            link.text = "Wikipedia: " + link.text.substring(22);
        }
        l = $(link);
        l.addClass('linkShortened');
        prevText = l[0].parentElement.childNodes[0];
        if ((prevText.textContent === "Wikipedia: ") ||
            (prevText.textContent === "WikipediaCategory: ")) {
            if (!(prevText.classList)) {
                $(prevText).wrap('<div class="shortenText hidden"></div>');
            } else if (prevText.classList.contains("shortenText")) {
                $(prevText).addClass("hidden");
            }
        }
    }
}

/**
 * Shorten links with striphttps and stripenwikipedia
 */
function shortenLinks() {
    links = $('a.reference.external');
    links.map(striphttps);
    links.map(stripenwikipedia);
}

/**
 * Perform the inverse of shorten links
 */
function unshortenLinks() {
    $('div.shortenText').removeClass('hidden');
    $('a.reference.external.linkShortened').map(
        function (i, e) { e.text = e.href }
    );
}

/* see: newtab.js for cookie-state-conditional init
$(document).ready(function() {
    shortenLinks();
}) */

/* end linkstypes.js */

