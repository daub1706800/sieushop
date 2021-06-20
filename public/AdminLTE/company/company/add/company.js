$(document).ready(function(){
    $(function(){
        var date_input=$('input[name="ngaythanhlapcongty"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        var options={
            format: 'yyyy-mm-dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
    });

    $(function(){
        var date_input=$('input[name="ngaycapdkkdcongty"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        var options={
            format: 'yyyy-mm-dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
    });

    $(function(){
        $(".field-selected").select2({
            tags: false,
            theme: "classic",
            width: "100%",
            // multiple: true,
            placeholder: "Chọn lĩnh vực"
        });
    });

    $(function(){
        $(".department-selected").select2({
            tags: false,
            theme: "classic",
            width: "100%",
            // multiple: true,
            placeholder: "Chọn sở ngành"
        });
    });
});