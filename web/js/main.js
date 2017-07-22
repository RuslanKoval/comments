jQuery(function() {

    $(document).on('click', '.reply-button, .update-button', function (e) {
        e.preventDefault();
        var row = $(this).closest('.media-body');
        var form = row.find('.reply-form');
        form.stop().slideToggle();
    });
    
});
