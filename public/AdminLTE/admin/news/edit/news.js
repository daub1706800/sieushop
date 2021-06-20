$(document).ready(function() {
    $(function(){
        $('.summernote-tomtat').summernote({
            height: 200,                // set editor height
            minHeight: 200,             // set minimum height of editor
            maxHeight: 200,             // set maximum height of editor
            focus: false,                  // set focus to editable area after initializing summernote
            codemirror: { // codemirror options
                theme: 'monokai'
            },
            placeholder: "Nhập nội dung tóm tắt",
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['view', ['help']]
            ]
        });
    });

    $(function(){
        $('.summernote-noidung').summernote({
            height: 400,                // set editor height
            minHeight: 400,             // set minimum height of editor
            maxHeight: 400,             // set maximum height of editor
            focus: false,                  // set focus to editable area after initializing summernote
            codemirror: { // codemirror options
                theme: 'monokai'
            },
            placeholder: "Nhập nội dung chính",
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

    $(function(){
        $(".category-selected").select2({
            tags: false,
            placeholder : 'Chọn chuyên mục',
            theme: "classic",
            width: "100%"
        });
    });

    $(function(){
        $(".company-selected").select2({
            tags: false,
            placeholder : 'Chọn công ty',
            theme: "classic",
            width: "100%"
        });
    });

    $(document).on('click', '.xoa-video', function() {
        var id = $(this).data('id');
        $.ajax({
            url : "{{ route('news.delete-video') }}",
            type: "get",
            data: {
                "id":id
            },
            success:function(data) {
                location.reload();
            }
        });
    });
});