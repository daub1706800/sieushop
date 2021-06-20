$(document).ready(function(){
    $(function(){
        var error = $('.alert-custom').html();
        if(error != null)
        {
            $('#btn-modal-click').click();
        }
    });

    $(function(){
        $(".company-selected").select2({
            tags: false,
            placeholder : 'Chọn công ty',
            theme: "classic",
            width: "100%"
        });
    });
});