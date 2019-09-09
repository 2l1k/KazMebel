/*
 * Showmore plugin for opencart
 * Copyright (c) 2015 Shvarev Ruslan ruslan.shv@gmail.com
 * https://opencartforum.com/user/12381-freelancer/
 */
var $cookie = function () {};
$(document).ready(function () {
    if ($('.pagination div.links b').next('a').length > 0) {
        $('.pagination').before('<div class="catalog-inner__more"><button class="btn more-btn"><a onclick="showmore()">Открыть больше<svg width="11" height="14"><use xlink:href="catalog/view/theme/kazmebel/sprite/sprite.svg#more"></use></svg></a></button></div>');
    }
    if ($.totalStorage != undefined && $.totalStorage('display') != null) {
        $cookie = $.totalStorage;
    } else if ($.cookie != undefined && $.cookie('display') != null) {
        $cookie = $.cookie;
    }
});
function showmore() {
    var $next = $('.pagination div.links b').next('a');
    if ($next.length == 0) {
        return;
    }
    $.get($next.attr('href'), function (data) {
        $data = $(data);
        var $container = $('.product-list');
        $container.append($data.find('.product-list > *'));
        $('.pagination').html($data.find('.pagination > *'));
        if ($('.pagination div.links b').next('a').length == 0) {
            $('.catalog-inner__more').hide();
        }

        $data.filter('script').each(function () {
            if ((this.text || this.textContent || this.innerHTML).indexOf("document.write") >= 0) {
                return;
            }
            $.globalEval(this.text || this.textContent || this.innerHTML || '');
        });
        //$('html, body').animate({ scrollTop: $container.offset().top - 10 }, 'slow');

    }, "html");
    return false;
}