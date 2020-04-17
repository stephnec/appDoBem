// menu
var btnNavBar = document.querySelector("#sandwich");
var ativoBack = 0;
var ativoScroll = 0;

// para a rolagem de tela
$(window).on('scroll', function () {
    if ($(window).scrollTop()) {
        $('#navBarSection').addClass('scrolled');
        ativoScroll = 1;
    }
    else {
        $('#navBarSection').removeClass('scrolled');
        ativoScroll = 0;
    }
})

// para o menu ficar colorido ao primeiro clique em mobile
btnNavBar.addEventListener("click", function () {
    if (ativoBack == 0 && ativoScroll == 0) {
        document.querySelector("#navBarSection").classList.add("scrolled");
        ativoBack = 1;
    } else if (ativoBack == 1) {
        document.querySelector("#navBarSection").classList.remove("scrolled");
        ativoBack = 0;
    }
});

// scroll da tela com offset top
$('a[href^="#"].move').on('click', function (e) {
    e.preventDefault();
    var id = $(this).attr('href'),
        targetOffset = $(id).offset().top;
    $('html, body').animate({
        scrollTop: targetOffset - 77
    }, 0);
});

// popover
$(function () {
    $('[data-toggle="popover"]').popover()
})
$('.popover-dismiss').popover({
    trigger: 'focus'
})
