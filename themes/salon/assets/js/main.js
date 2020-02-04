"use strict";
jQuery(function ($) {



    new WOW().init();

    const input = $('.userForm__input');
    const inputValues = [];

    let burger = new Burger('.nav');

    $('textarea').each(function () {
        this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow:hidden;');
    }).on('input', function () {
        this.style.height = 'auto';
        this.style.height = (this.scrollHeight) + 'px';
    });

    $('.project__title').click(function () {
        $('body').css({'overflow': 'hidden'});
        $(this).parent().parent().parent().parent().find('.popup').fadeIn();

        $(document).mouseup(function (e) { // событие клика по веб-документу
            if (!$(".popupBody").is(e.target) && $(".popupBody").has(e.target).length === 0) {
                $('body').css({'overflow': 'scroll'});
                $('.popup').fadeOut();

            }
        });
    });

    $('.menu').click(function () {
        burger.toggleBurger();
        console.log(this);
    });

    $('.nav__link').click(function () {
        const url = $(this).find('a').attr('href');
        const link = url.split('#')[1];
        scrollTo( link );
    });

    $('.certificatesContent__images').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        adaptiveHeight: true,
        ///autoplay: true,
        //autoplaySpeed: 6000,
        dots: true,
        responsive: [
            {
              breakpoint: 1280,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true,
                dots: true
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.itemContent__header').click(function (e) {
        $(this).closest('.dropDown').slideToggle();
        //e.stopPropagation();
        console.log('open');
    });

    $('.innerContent__row').click(function (e) {
        e.stopPropagation();
        console.log('click row');
    })

    $( window ).on('scroll', function () {
        const headerBlock = $('.headerBlock');
        const pageTop = $(window).scrollTop();
        const changeClassDot = 200;

        if (pageTop >= changeClassDot) {
            headerBlock.addClass('headerBlock-transparent');
        } else {
            headerBlock.removeClass('headerBlock-transparent');
        }
        // headerBlock.css({
        //     'background': 'linear-gradient(to bottom, rgba(0,0,0,0.9) 0%, rgba(0,0,0,0.6) 100%)'
        // })
    });


    $('.userForm__submitBtn').click(function( e ) {

        e.preventDefault();

        const myArr = [];

        const mailData = {
            userName: 'Dima',
            userPhone: '1323435345'
        };

        sendMail( 'Привет' );

        clearError(input);

        for (let i = 0; i < input.length; i++) {
            let currVal = input[i].value;
            if (!currVal) {
                errorMessage(input[i]);
            } else {
                myArr.push(currVal);
            }
        }
        if (input.length == myArr.length) {
            inputValues.push(myArr);

            clearForm();
            successBlock();

        } else {
            console.log('form is invalid')
        }
        console.log(inputValues);
    });


//////////////////////////////////////_____FUNCTIONS_____///////////////////////////////////////////////////
    function errorMessage(currInput) {
        currInput.classList.add('userForm__input-error');
    };
    function clearError(input) {
        for (let i = 0; i < input.length; i++) {
            input[i].classList.remove('userForm__input-error');
        }
    };
    function clearForm() {
        for (let i = 0; i < input.length; i++) {
            input[i].value = '';
        }
    };
    function successBlock() {
        let contactUsBlock = $('.contactUsBlock');
        let success = $('.success');
        let successClose = $('.successClose');

        if (!success) {
            success = document.createElement('div');
            success.classList.add('success');
            success.innerHTML = "Ваша заявка успешно отправлена";

            successClose = document.createElement('div');
            successClose.classList.add('successClose');
            successClose.innerHTML = "X";

            success.appendChild(successClose);
            contactUsBlock.appendChild(success);
        }
        successClose.onclick = function () {
            success.remove();
        }
    };
    function Burger(burger) {
        this.burger = burger;

        let burgerUl = $(this.burger);

        burgerUl.hide();

        this.toggleBurger = function () {
            console.log('toggle');
            burgerUl.slideToggle()
        } 
    } // Burger - конструктор объекта бургер меню
    function scrollTo( selector ) {
        let myOffSet = 75;
        $('html, body').animate({
            scrollTop: $( '[data-page-url="'+ selector +'"]' ).offset().top - myOffSet
        }, 500);

        return false;
    } // scrollTo - кролл к выбраной странице через меню

    function sendMail( data ) {

        console.log(myAjax);

        $.post(
            myAjax.ajaxUrl,
            {
                action: 'send_mail',
                mail_data: data
            },
            function (response) {
                // console.log(response);
                let data = $.parseJSON(response);
                console.log(data);
            });
    }
});
