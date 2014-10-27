
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

var keymap = {
    "westurner.github.io": 'UA-46001060-1',
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
