$(document).ready(function () {
	// Users
	/*--first time load--*/
	ajaxlist((page_url = false));

	/*-- Search keyword--*/
	$(document).on("keyup", "#search_key", function (event) {
		ajaxlist((page_url = false));
		event.preventDefault();
	});

	/*-- Reset Search--*/
	$(document).on("click", "#resetBtn", function (event) {
		$("#search_key").val("");
		ajaxlist((page_url = false));
		event.preventDefault();
	});

	/*-- Page click --*/
	$(document).on("click", ".uk-pagination li a", function (event) {
		var page_url = $(this).attr("href");
		ajaxlist(page_url);
		event.preventDefault();
	});

	/*-- create function ajaxlist --*/
	function ajaxlist(page_url = false) {
		var search_key = $("#search_key").val();
		var url = base_url + "riwayat/tampil";
		var dataString = "search_key=" + search_key;
		if (page_url == false) {
			var page_url = url;
		}

		$.ajax({
			type: "POST",
			url: page_url,
			data: dataString,
			beforeSend: function () {
				$(".loading").show();
			},
			success: function (response) {
				console.log(response);
				$("#ajaxUsers").html(response);
				$(".loading").fadeOut("slow");
			},
		});
	}
	// Users

	$("body").on("click", "#tambahmodal", function (e) {
		e.preventDefault();
		$("#namalengkap").val("");
		$("#username").val("");
		$("#password").val("");
		$("#conpassword").val("");
		$("#users").prop("checked", true);
		$("#statususers").html("Tolong diingat passwordnya");

		$("#tambahdata").text("Tambah Users");

		$("#editdata").attr("id", "simpandata");
		$("#simpandata").text("Simpan Data");
		UIkit.modal("#modalusers").show();
	});

	$("body").on("click", "#formedit", function (e) {
		e.preventDefault();
		var id = $(this).data("id");
		var nama = $(this).data("nama");
		var status = $(this).data("status");
		var riwayat = $(this).data("riwayat-status");
		var username = $(this).data("username");

		if (riwayat == "belum membayar") {
			$("#pembayaran").show();
		} else {
			$("#pembayaran").hide();
		}

		$("#idusers").val(id);
		$("#namalengkap").val(nama);
		$("#username").val(username);

		if (status == "admin") {
			$("#admin").prop("checked", true);
		} else {
			$("#users").prop("checked", true);
		}

		$("#statususers").html("Kosongi Jika tidak mau diubah");

		$("#tambahdata").text("Riwayat");
		$("#simpandata").attr("id", "editdata");
		$("#editdata").text("Edit Data");
		UIkit.modal("#modalusers").show();
	});

	$("body").on("click", "#simpandata", function (e) {
		e.preventDefault();

		var nama = $("#namalengkap").val();

		var status = $("input[name='riwayat_status']:checked").val();

		$.ajax({
			url: base_url + "savedatausers",
			method: "POST",
			data: {
				nama: nama,
				status: status,
			},
			beforeSend: function () {
				$("#simpandata").text("Loading");
			},
			success: function (data) {
				$("#simpandata").text("Simpan Data");
				ajaxlist((page_url = false));
				UIkit.modal("#modalusers").hide();
				UIkit.notification({
					message:
						'<span uk-icon="icon: check"></span> Data berhasil tersimpan!',
					status: "success",
					pos: "top-right",
					timeout: 1000,
				});
			},
		});
	});

	$("body").on("click", "#editdata", function (e) {
		e.preventDefault();
		var nama = $("#namalengkap").val();
		var id = $("#idusers").val();
		var status = $("input[name='status']:checked").val();

		$.ajax({
			url: base_url + "editdatariwayat",
			method: "POST",
			data: {
				id: id,
				nama: nama,
				status: status,
			},
			beforeSend: function () {
				$("#editdata").text("Loading");
			},
			success: function (data) {
				$("#editdata").text("Simpan Data");
				ajaxlist((page_url = false));
				UIkit.modal("#modalusers").hide();
				UIkit.notification({
					message: '<span uk-icon="icon: check"></span> Data berhasil teredit!',
					status: "success",
					pos: "top-right",
					timeout: 1000,
				});
			},
		});
	});

	$("body").on("click", "#hapusdata", function (e) {
		e.preventDefault();
		var id = $(this).data("id");

		swal({
			title: "Apakah Anda Yakin?",
			text: "akan terhapus permanen!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		}).then((willDelete) => {
			if (willDelete) {
				$.ajax({
					type: "POST",
					url: base_url + "hapususers",
					data: { id: id },
					dataType: "text",
					success: function (data) {
						ajaxlist((page_url = false));
					},
				});
				swal("Berhasil! Data Users sudah terhapus!", {
					icon: "success",
				});
			} else {
				swal("Data anda masih aman!");
			}
		});
	});
});
