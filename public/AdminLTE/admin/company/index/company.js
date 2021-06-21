$(document).ready(function(){
    $(document).on('click', '.company-item', function() {
        var idCompany = $(this).data('id');
        var url = $(this).data('url');
        $.ajax({
            url : url,
            type : "get",
            data : {
                "idCompany":idCompany,
            },
            success:function(data) {
                $('.congty').text(data.company.tencongty);
                $('.ngaythanhlap').text('Thành lập ngày ' + data.company.ngaythanhlapcongty);
                $('.tenso').text(data.department.tenso);
                $('.linhvuc').text(data.field.tenlinhvuc);
                $('.diachi').text(data.company.diachicongty);
                $('.email').text(data.company.emailcongty);
                $('.dienthoai').text(data.company.dienthoaicongty);
                $('.fax').text(data.company.faxcongty);
                $('.website').text(data.company.webcongty);
                $('.sdkkd').text(data.company.sdkkdcongty);
                $('.ngaycap').text(data.company.ngaycapdkkdcongty);
                $('.noicap').text(data.company.noicapdkkdcongty);
                $('.masothue').text(data.company.masothuecongty);
                $('.subdomain').text(data.subdomain);
            }
        });
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

    $(document).on('click', '.delete-company', function(e) {
        e.preventDefault();
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
                    url : $(this).attr('href'),
                    type: "get",
                    success:function(data) {
                        if (data.code == 200) {
                            Toast.fire({
                                icon: 'success',
                                title: 'Xóa thành công !'
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