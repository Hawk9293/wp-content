jQuery( function ($) {
    $(".gallery__item").fancybox({
        scrolling: 'auto',
        padding: 0,
        margin: 0,
        centerOnScroll: true,
        autoScale: true,
        titleShow: false,
        transitionIn: 'elastic',
        changeSpeed: 0,
        speedIn: 200,
        speedOut: 200
    });
});