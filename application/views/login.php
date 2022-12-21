<!DOCTYPE html>
<html>
    <head>
        <title>Halaman Login</title>

        <meta charset="UTF-8">
        <meta name="description" content="Clean and responsive administration panel">
        <meta name="keywords" content="Admin,Panel,HTML,CSS,XML,JavaScript">
        <meta name="author" content="Erik Campobadal">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<?=base_url('public/')?>css/uikit.min.css" />
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="<?=base_url('public/')?>css/style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>     
    <script src="<?php echo base_url('public/js/sweetalert.min.js')?>"></script>
    
    <script src="<?=base_url('public/')?>js/uikit.min.js" ></script>
	<script src="<?=base_url('public/')?>js/uikit-icons.min.js" ></script>
    <script>
        var base_url="<?=base_url()?>";
    </script>
    </head>
    <body>
        <div uk-sticky="media: 960" class="uk-navbar-container tm-navbar-container uk-sticky uk-active" style="position: fixed; top: 0px; width: 1903px;">
            <div class="uk-container uk-container-expand">
                <nav uk-navbar>
                    <div class="uk-navbar-left">
                        <a href="utama" class="uk-navbar-item uk-logo">
                           MUTERA
                        </a>
                    </div>
                </nav>
            </div>
        </div>

        <div class="content-background">
            <div class="uk-section-large">
                <div class="uk-container uk-container-large">
                    <div uk-grid class="uk-child-width-1-1@s uk-child-width-2-3@l">
                        <div class="uk-width-1-1@s uk-width-1-5@l uk-width-1-3@xl"></div>
                        <div class="uk-width-1-1@s uk-width-3-5@l uk-width-1-3@xl">
                            <div class="uk-card uk-card-default">
                                <div class="uk-card-body">
                                    <center>
                                        <h2>Silakan lakukan Login</h2><br />
                                    </center>
                                    <form method="POST">
                                        <fieldset class="uk-fieldset">

                                            <div class="uk-margin">
                                                <div class="uk-position-relative">
                                                    <span class="uk-form-icon ion-android-person"></span>
                                                    <input name="username" class="uk-input" required placeholder="Username" id="username" type="text">
                                                </div>
                                            </div>

                                            <div class="uk-margin">
                                                <div class="uk-position-relative">
                                                    <span class="uk-form-icon ion-locked"></span>
                                                    <input name="password" class="uk-input" type="password" required  id="password" placeholder="Password">
                                                </div>
                                            </div>

                                            

                                            <div class="uk-margin">
                                                <button type="button" id="login" class="uk-button uk-button-primary">
                                                    <span class="ion-forward"></span>&nbsp; Login
                                                </button>
                                            </div>

                                            Belum punya akun? 
                                            <div class="uk-margin">
                                                <button type="button" class="uk-button uk-button-primary" onclick="window.location.href='<?= base_url('register')?>'">
                                                    <span class="ion-forward"></span>&nbsp; Register
                                                </button>
                                            </div>
                                            <hr />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="uk-width-1-1@s uk-width-1-5@l uk-width-1-3@xl"></div>
                    </div>
                </div>
            </div>
        </div>
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
        <script src="<?=base_url('public/')?>js/login.js"></script>	
    </body>
</html>
