$(document).ready(function() {
    $(function(){
        $(".deparment-selected").select2({
            tags: false,
            placeholder : 'Chọn vai trò',
            theme: "classic",
            width: "100%",
            // multiple: true
        })
    });
    
    $(function () {
        var errors = $('.alert-custom').html();
        if (errors != null) {
            $('#btn-modal-click').click();
        }
    });
});