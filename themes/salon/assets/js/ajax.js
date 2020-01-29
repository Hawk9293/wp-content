"use strict";
jQuery(function($){
    const blockData = {
        services: {
            0: {
                price: 'value',
                name: 'value'
            },
            1: {
                price: 'value',
                name: 'value'
            },
        },
        servicesInfo: {
            0: {
                price: 'value',
                name: 'value'
            },
            1: {
                price: 'value',
                name: 'value'
            },
        },
    };



    $('.submitBtn').click( function(e){
        e.preventDefault();

        //const currentForm = findParent($(this), 'form');
        const currentForm = $(this).closest('.form');

        const inputData = getInputData( currentForm );

        console.log( inputData );

        ajaxSubmit( inputData );
    });



    function ajaxSubmit( data ) {
        $.ajax({
                type: 'POST', // метод HTTP, используемый для запроса
                url: 'ajax.php', // строка, содержащая URL адрес, на который отправляется запрос
                data: data,
                beforeSend: function() {
                    console.log('data sending');
                },
                success: function( data ) {
                   // data = JSON.parse( data );
                }
            }
        );
    }



    function getInputData( blockForm ) {
        const tableSection = blockForm.find('.tableSection');
        const data = {};

        tableSection.each(function () {
            const tableName = $(this).attr('data-tableName');
            const inputs = $(this).find('[name]');

            if ( !(tableName in data) ) {
                data[tableName] = {};
            }

            inputs.each(function () {
                const postId = $(this).attr('data-id');
                const inputName = $(this).attr('name');
                const inputsVal = $(this).val();
                
                if ( !(postId in data[tableName]) ) {
                    data[tableName][postId] = {};
                }

                data[tableName][postId][inputName] = inputsVal;
            });
        });
        return data;
    }



    function findParent(context, className) {
        let isParentClass = false;
        let findParent = context.parent();

        if ( findParent.hasClass( className ) ) {
            return findParent;
        }
        while ( !isParentClass ) {
            findParent = findParent.parent();
            if ( findParent.hasClass( className ) ) {
                isParentClass = true;
            }
        }
        return findParent;
    }

});