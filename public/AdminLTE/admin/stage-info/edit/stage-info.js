$(document).ready(function() {
    $(function () {
        $('.summernote').summernote({
            height: 200,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: false,                  // set focus to editable area after initializing summernote
            codemirror: { // codemirror options
                theme: 'monokai'
            },
            placeholder: "Nhập mô tả cho công việc",
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['help']]
            ]
        });
    });
    
    $(function () {
        var date_input=$('input[name="thoigianbatdau"]');
        var date_input2=$('input[name="thoigianhoanthanh"]');
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        var options={
            format: 'yyyy-mm-dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
        date_input2.datepicker(options);
    });

    $(document).on('change', '.validated-thoigianhoanthanh', function() {
        var ngayhoanthanh = $(this).val();
        var ngaybatdau = $('input[name="thoigianbatdau"]').val();
        var thoigiandukien = $('input[name="thoigiandukien"]').val();

        if (ngaybatdau != "" && ngaybatdau <= ngayhoanthanh) {
            d = moment(ngayhoanthanh).diff(moment(ngaybatdau), 'days');
            if (Number(d) > Number(thoigiandukien))
            {
                var kq = Number(d) - Number(thoigiandukien);
                $('input[name="trehan"]').val(kq);
                $('.trangthai').text('Trễ hạn (ngày)');
            }
            else if (Number(d) <= Number(thoigiandukien))
            {
                var kq = Number(thoigiandukien) - Number(d);
                $('input[name="trehan"]').val(kq);
                $('.trangthai').text('Sớm hạn (ngày)');
            }
        }
        else
        {
            $('input[name="trehan"]').val(0);
        }
    });
});