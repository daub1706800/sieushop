$(document).ready(function() {
    if (!$('.form-control-file').val()) {
        $('#submit-banner').attr('disabled','disable');
    }
    $(document).on('change', 'input[type=radio][name=loaibanner]', function () {
        if (this.value == 0) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao[]');
        }
        else if (this.value == 1) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao1[]');
        }
        else
        {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao2[]');
        }
    });

    $(document).on('change', '.form-control-file', function () {
        if ($(this).val()) {
            $('#submit-banner').removeAttr('disabled');
        }
        else
        {
            $('#submit-banner').attr('disabled','disable');
        }
    });

    $(function () {
        $('[data-toggle="popover"]').popover({
            trigger: 'focus',
            delay: { "show": 100, "hide": 100 }
        });
        
    });
});