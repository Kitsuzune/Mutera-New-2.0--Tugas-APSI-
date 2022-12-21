$(document).ready(function () {
	$("#register").click(function () {
				var nama = $("#namaLengkap").val();
				var username = $("#username").val();
				var password = $("#password").val();
				var confirmasi = $("#confirm_password").val();
				var status = "Users";
		if ($.trim(username).length > 0 && $.trim(password).length > 0) {
			$.ajax({
				url: base_url + "prosesregis",
				method: "POST",
	data: {
					nama: nama,
					username: username,
					password: password,
					status: status,
				},				cache: false,
				beforeSend: function () {
					$("#login").html("Loading..");
				},
				success: function (hasil) {
					if (hasil == 1) {
						swal({
							title: "Maaf!",
							text: "Username Tidak terdata di server",
							icon: "error",
							button: "Tutup!",
						});
						$("#register").html("REGISTER");
						$("#username").focus();
					} else if (hasil == 0) {
						swal({
							title: "Maaf!",
							text: "Password Tidak sesuai dengan di server",
							icon: "error",
							button: "Tutup!",
						});
						$("#register").html("REGISTER");
						$("#password").focus();
					} else {
						swal({
							title: "Selanat datang!",
							text: "Gunakan aplikasi ini dengan akhlak yang baik",
							icon: "success",
							button: "ya",
						});
						window.location.href = base_url;
					}
				},
			});
		} else {
			swal({
				title: "Maaf!",
				text: "Username dan Password kosong",
				icon: "error",
				button: "Tutup!",
			});
		}
	});
});
