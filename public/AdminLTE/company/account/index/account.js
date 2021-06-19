$(document).ready(function() {
    $(function () {
        var errors = $('.alert-danger').html();
        if (errors != null) {
            $('#btn-modal-click').click();
        }
    });
    
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

    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });

    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: false,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    });

    $(document).on('click', '.badge-delete', function (e) {
        e.preventDefault();
        var roleID = $(this).attr('data-id-role');
        var userID = $(this).attr('data-id-user');
        var url = $(this).attr('href');
        Swal.fire({
            title: 'Bạn có chắc ?',
            text: "Bạn sẽ không thể hoàn tác điều này !",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý',
            cancelButtonText: 'Hủy',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url : url,
                    type: "get",
                    data: {
                        'id_role':roleID,
                        'id_user':userID,
                    },
                    success:function(data) {
                        if (data.code == 200) {
                            Toast.fire({
                                icon: 'success',
                                title: 'Xóa thành công'
                            }).then((result) => {
                                location.reload();
                            });
                        }
                    }
                });
            }
        });
    });
});