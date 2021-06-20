$(document).ready(function() {
    $(function () {
        var loai_banner = $('input[type=radio][name=loaibanner]').val();
        if (loai_banner == 0) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao[]');
        }
        else if (loai_banner == 1) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao1[]');
        }
        else
        {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao2[]');
        }
    });

    $(document).on('change', 'input[type=radio][name=loaibanner]', function () {
        var loai_banner = $(this).val();
        if (loai_banner == 0) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao[]');
        }
        else if (loai_banner == 1) {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao1[]');
        }
        else
        {
            $('.form-control-file').attr('name', 'dulieuhinhanhquangcao2[]');
        }
        
        
    });

    $(function () {
        $('[data-toggle="popover"]').popover({
            trigger: 'focus',
            delay: { "show": 100, "hide": 100 }
        });
        
    });
});