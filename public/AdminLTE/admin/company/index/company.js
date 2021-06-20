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
});