$(document).ready(function () {
    $('body').on('click', '#logout',function (e) {
        e.preventDefault();

        swal({
            title: "Apakah Anda Yakin?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                    $.ajax({
                        type: "POST",
                        url: base_url+"keluar",
                        dataType: "text",
                        success: function (data) {
                           
                        }
          });
            
              window.location=base_url+"auth";
            } else {
              swal("Anda masih dihalaman Dashboard!");
            }
          });
    
    });
});