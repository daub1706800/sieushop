$(document).ready(function() {
    $(function(){
        $('.summernote').summernote({
            height: 400,                // set editor height
            minHeight: 400,             // set minimum height of editor
            maxHeight: 400,             // set maximum height of editor
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
                // ['insert', ['link', 'picture', 'video']],
                ['view', ['help']]
            ]
        });
    });
    $(function(){
        $(".storage-selected").select2({
            tags: false,
            placeholder : 'Chọn vai trò',
            theme: "classic",
            width: "100%"
        });
    });
    $(function(){
        $(".productcategories-selected").select2({
            tags: false,
            placeholder : 'Chọn vai trò',
            theme: "classic",
            width: "100%"
        });
    });
});