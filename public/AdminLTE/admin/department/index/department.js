$(document).ready(function() {
    $(function () {
        var errors = $('.alert-custom').html();
        if (errors != null) {
            $('#btn-modal-click').click();
        }
    });

    $(document).on('click', '.department-item', function() {
        var idDepartment = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
            type : "get",
            data : {
                "idDepartment":idDepartment,
            },
            success:function(data) {
                console.log(data);
                $('.tenso').text(data.department.tenso);
                $('.taongay').text('Ngày tạo ' + data.date);
                $('.diachi').text(data.department.diachiso);
                $('.email').text(data.department.emailso);
                $('.dienthoai').text(data.department.dienthoaiso);
                $('.fax').text(data.department.faxso);
                $('.website').text(data.department.webso);
            }
        });
    });
});