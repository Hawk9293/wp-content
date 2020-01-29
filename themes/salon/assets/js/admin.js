jQuery(function ($) {
    $('.itemContent__header').click(function () {
        $(this).parent().siblings('.dropDown').slideToggle().css('background','white');
        $(this).children('.fas').toggleClass('fa-caret-up');
    });
	
	$('input').change(function () {
		$(this).css({
                'background': 'linear-gradient(to right, rgba(191,255,82,1) 0%, rgba(128,231,64,1) 100%)',
                'color':'black'
		});
	});

    $('.submitBtn').click( function(){
        const currentForm = $(this).closest('.dropDown');

        currentForm.append('<div class="success"></div>');

        $('.success').append('<div class="success__header">Successfull Update</div>');
        setTimeout( function (){
            $('.success').remove();
        }, 2000);
        
    });
});