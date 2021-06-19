$(document).ready(function() {
    $(function(){
        var date_input1=$('input[name="thoigianbatdau[]"]'); //our date input has the name "date"
        var date_input2=$('input[name="thoigianketthuc[]"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        var options={
            format: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input1.datepicker(options);
        date_input2.datepicker(options);
    });

    function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2) 
            month = '0' + month;
        if (day.length < 2) 
            day = '0' + day;

        return [day, month, year].join('-');
    }

    $(document).on('change', 'input[name="idvaitro[]"]', function () {
        if (this.checked) {
            $('#batdau' + $(this).val()).val(formatDate(new Date()));
            $('#batdau' + $(this).val()).removeAttr('disabled');
            $('#ketthuc' + $(this).val()).removeAttr('disabled');
            $('#badge' + $(this).val()).removeClass('badge-secondary');
            $('#badge' + $(this).val()).addClass('badge-primary');
        }
        else
        {
            $('#batdau' + $(this).val()).val(null);
            $('#ketthuc' + $(this).val()).val(null);
            $('#batdau' + $(this).val()).attr('disabled', 'disable');
            $('#ketthuc' + $(this).val()).attr('disabled', 'disable');
            $('#badge' + $(this).val()).removeClass('badge-primary');
            $('#badge' + $(this).val()).addClass('badge-secondary');
        }
    });

    $(document).on('blur', 'input[name="thoigianbatdau[]"]', function () {
        $(this).val(formatDate(new Date()));
    });
});