<!DOCTYPE html>
<html lang="en" class="theme-color-07cb79 theme-skin-light">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>RScard</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon.png" />

	<!-- Google Fonts -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Fredoka+One">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic">

	<link rel="stylesheet" href="https://i.icomoon.io/public/temp/816f2c307b/UntitledProject/style.css">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<?php wp_head() ?>
</head>

<body class="home header-has-img loading">	
	
    <div class="mobile-nav">
        <button class="btn-mobile mobile-nav-close"><i class="rsicon rsicon-close"></i></button>
		
        <div class="mobile-nav-inner">
            <nav id="mobile-nav" class="nav">
			<?php 
				wp_nav_menu( array(
				'theme_location' => 'primary',
				'container' => false,
				'menu_class' => 'nav d-flex justify-content-between',
				));
			?>
        </div>
    </div><!-- .mobile-nav -->
	<div class="wrapper">
        <header class="header">
            <div class="head-bg" style="background-image: url('<?php bloginfo('template_directory');?>/img/uploads/rs-cover.jpg')"></div>

            <div class="head-bar">
                <div class="head-bar-inner">
                    <div class="row">
                        <div class="col-sm-3 col-xs-6">
                       
                            <a class="logo" href="<?php echo home_url() ?>"><span><?php echo get_bloginfo('name'); ?></span><?php echo get_bloginfo('description'); ?></a>
							<!-- <a class="head-logo" href=""><img src="img/rs-logo.png" alt="RScard"/></a> -->
                        </div>

                        <div class="col-sm-9 col-xs-6">
                            <div class="nav-wrap">
                                <nav id="nav" class="nav">
								<?php 
									wp_nav_menu( array(
									'theme_location' => 'primary',
									'container' => false,
									'menu_class' => 'nav d-flex justify-content-between',
									));
								?>
								</nav>

                                <button class="btn-mobile btn-mobile-nav">Menu</button>
                                <button class="btn-sidebar btn-sidebar-open"><i class="rsicon rsicon-menu"></i></button>
                            </div><!-- .nav-wrap -->
                        </div>
                    </div>
                </div>
            </div>
        </header><!-- .header -->

    