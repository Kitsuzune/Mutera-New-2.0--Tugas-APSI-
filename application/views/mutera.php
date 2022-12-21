<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
    <meta property="og:site_name" content="" /> <!-- website name -->
    <meta property="og:site" content="" /> <!-- website link -->
    <meta property="og:title" content="" /> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
    <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
    <meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Peta - Mutera</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="<?= base_url('public/') ?>css/style1copy.css" rel="stylesheet">
    

    <!-- Favicon  -->
</head>

<body>

    <!-- Navigation --> 
    <nav class="navbar navbar-expand-lg bg-white sticky-top">
        <div class="container">
            <a class="#">
                <p> Mutera </p>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="utama">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="zakat">Zakat</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="peta">Maps</a>
                </ul>
                <?php if($this->session->userdata('status')) { ?>
                    <a class="btn btn-brand ms-lg-3" href="<?= base_url('dashboard')?>">Dashboard</a>
                    <?php } else { ?>
                    <a href="<?= base_url('login')?>" class="btn btn-brand ms-lg-3">Login</a>
                    <?php } ?>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h4>Melalui Mutera</h4>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->


    <!-- Basic -->
    <div class="ex-basic-1 pt-5 pb-5">
        <div class="container">
            <h5 class="h5-large">Siap bayar zakat? Pilih daerah untuk menyalurkan zakat.</h5>
            <br>
            <?php 
            $gambar = array("https://mutera.mercucode.my.id/public/images/Merah2.PNG", "https://mutera.mercucode.my.id/public/images/Kuning.PNG", "https://mutera.mercucode.my.id/public/images/merah.PNG", "https://mutera.mercucode.my.id/public/images/merah.PNG", "https://mutera.mercucode.my.id/public/images/rumahyatim.png", "https://mutera.mercucode.my.id/public/images/rumahzakat.png");
            $angka = 0;
            ?>
            <?php foreach($lokasi as $item) { ?>
            
            <div class="card mb-3" style="max-width: 1000px;">
                <div class="row g-0">
                   <div class="col-md-4">
                        <img src="<?= $gambar[$angka]?>" class="img-fluid rounded-start" alt="...">
                    </div>    
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $item['namaLokasi'] ?></h5>
                            <form id="formDonasi" action="<?= base_url('riwayat/donasi/'.$item['idLokasi']) ?>" method="post">
                                <input class="form-control" type="text" name="jumlah" placeholder="Jumlah Donasi" id="">
                                <input type="submit" class="btn btn-primary btn-block btn-lg mr-auto" value="Donasi">
                            </form>
                            <br>
                       
             <?php foreach($count as $c) { ?>
                <?php $check = ($c['jumlah_riwayat'] == null) ? 0 : $c['jumlah_riwayat'];
                 ?>
                <?php if($c['idLokasi'] == $item['idLokasi']) { ?>
             <p class="text-start">Terkumpul Rp <?php echo number_format($c['jumlah_riwayat'],0,',','.')?> dari Rp <?php echo number_format($c['maximum'],0,',','.')?>
             <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: <?= ($c['jumlah_riwayat']/$c['maximum']) * 100?>%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0"></div>
</div>
                    <?php } ?>
                      <?php } ?> 
                    <?php $angka = $angka + 1; ?>
                        </div>
                    </div>
                </div> 
            </div>

            <?php } ?> 


        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of basic -->





    <!-- Footer -->
    <div class="footer bg-gray">
        <img class="decoration-city" src="<?=base_url('public/')?>images/decoration-city.svg" alt="alternative">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->
    <!-- end of footer -->


    <!-- Copyright -->
    <footer class="bg-dark">
        <div class="footer-bottom">
            <div class="container">
                <div class="row g-4 justify-content-between">
                    <div class="col-auto">
                        <p class="mb-0">© Copyright Mutera 2018 All Rights Reserved</p>
                    </div>
                    <div class="col-auto">
                        <p class="mb-0"> Reworked With <a href="https://getbootstrap.com/"> Bootstrp 5 For Node.Js</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- Scripts -->
    <script src="<?=base_url('public/')?>js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="<?=base_url('public/')?>js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="<?=base_url('public/')?>js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="<?=base_url('public/')?>js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="<?=base_url('public/')?>js/scripts.js"></script> <!-- Custom scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>

</html>