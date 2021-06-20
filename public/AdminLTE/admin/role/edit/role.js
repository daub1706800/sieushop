$(document).ready(function(){
    $('.checkbox-parent').on('click', function(){
        $(this).parents('tr').find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
    });

    $('.check-all').on('click', function(){
        $(this).parents().find('.checkbox-parent').prop('checked', $(this).prop('checked'));
        $(this).parents().find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
    });
});