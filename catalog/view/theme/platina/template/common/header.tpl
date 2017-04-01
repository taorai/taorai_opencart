<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- external css/js -->
<link href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/fancybox/jquery.fancybox.css" rel="stylesheet">
<script src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/fancybox/jquery.fancybox.js" type="text/javascript"></script>
<!-- external css/js end-->

<!-- Google Fonts // magik theme-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,300,700,800,400,600' rel='stylesheet' type='text/css'>
<!-- end font -->

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<?php global $config; ?>

<?php // external CSS magik theme  ?>
<?php if($config->get('magikplatina_animation_effect')==1){ ?>
<link href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/animate.css" rel="stylesheet">
<?php } ?>
<link href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/font-awesome.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css">
<link href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/style.css" rel="stylesheet">
<?php // external css end?>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!-- <script src="catalog/view/javascript/common.js" type="text/javascript"></script> -->

<?php // External js magik theme ?>

<script src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/parallax.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/common1.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/cloudzoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<?php // external js end?>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<style type="text/css">

<?php if($config->get('magikplatina_fonttransform')!=''){?>
body {font-family:<?php echo $config->get('magikplatina_fonttransform'); ?>, sans-serif !important ;}
<?php }?>

/* sale label */
.sale-label {background:<?php echo "#".$config->get('magikplatina_sale_labelcolor'); ?>}

/*Main color section */
<?php if($config->get('magikplatina_body_bg_ed')==1) { ?>
body {background:<?php echo "#".$config->get('magikplatina_body_bg')."! important"; ?> } <?php } ?>
<?php if($config->get('magikplatina_fontcolor_ed')==1) { ?>
body {color:<?php echo "#".$config->get('magikplatina_fontcolor'); ?> } <?php } ?>
<?php if($config->get('magikplatina_linkcolor_ed')==1) { ?>
a,a:visited {color:<?php echo "#".$config->get('magikplatina_linkcolor'); ?>} <?php } ?>
<?php if($config->get('magikplatina_linkhovercolor_ed')==1) { ?>
a:hover {color:<?php echo "#".$config->get('magikplatina_linkhovercolor'); ?>} <?php } ?>


/* header color section */ 
<?php if($config->get('magikplatina_headerbg_ed')==1) { ?>
header { background-color: <?php echo "#".$config->get('magikplatina_headerbg')."! important"; ?>;} <?php } ?>
<?php if($config->get('magikplatina_headerlinkcolor_ed')==1) { ?>
header .toplinks div.links div a{color:<?php echo "#".$config->get('magikplatina_headerlinkcolor')."! important"; ?>;} <?php } ?>
<?php if($config->get('magikplatina_headerlinkhovercolor_ed')==1) { ?>
header .toplinks div.links div a:hover{color:<?php echo "#".$config->get('magikplatina_headerlinkhovercolor')."! important"; ?>;} <?php } ?>
<?php if($config->get('magikplatina_headerclcolor_ed')==1) { ?>
.block-currency,.block-language{color:<?php echo "#".$config->get('magikplatina_headerclcolor')."! important"; ?>;} <?php } ?>

/*Top Menu */
/*background*/
<?php if($config->get('magikplatina_mmbgcolor_ed')==1) { ?>
nav { background:<?php echo "#".$config->get('magikplatina_mmbgcolor')."! important"; ?> } <?php } ?>
/*main menu links*/
<?php if($config->get('magikplatina_mmlinkscolor_ed')==1) { ?>
#nav > li > a{ color:<?php echo "#".$config->get('magikplatina_mmlinkscolor'); ?>; } <?php } ?>
/*main menu link hover*/
<?php if($config->get('magikplatina_mmlinkshovercolor_ed')==1) { ?>
#nav > li > a:hover:nth-child(1), #nav > li > a.active:nth-child(1){color:<?php echo "#".$config->get('magikplatina_mmlinkshovercolor')."! important"; ?>} <?php } ?>
<?php if($config->get('magikplatina_mmslinkscolor_ed')==1) { ?>
#nav ul.level0 > li > a{color:<?php echo "#".$config->get('magikplatina_mmslinkscolor'); ?>} <?php } ?>
/*sub links hover*/
<?php if($config->get('magikplatina_mmslinkshovercolor_ed')==1) { ?>
#nav ul li a:hover{color:<?php echo "#".$config->get('magikplatina_mmslinkshovercolor'); ?> } <?php } ?> 

/*buttons*/
<?php if($config->get('magikplatina_buttoncolor_ed')==1) { ?>
button.button,.btn,#cart .btn-checkout,#cart .view-cart{background-color:<?php echo "#".$config->get('magikplatina_buttoncolor')."! important"; ?> } <?php } ?>
<?php if($config->get('magikplatina_buttonhovercolor_ed')==1) { ?>
button.button:hover,.btn:hover,#cart .btn-checkout:hover,#cart .view-cart:hover{box-shadow: <?php echo "inset 0 -40px 0 0 #".$config->get('magikplatina_buttonhovercolor')."! important"; ?>; border: <?php echo "2px solid #".$config->get('magikplatina_buttonhovercolor')."! important"; ?>; }
<?php } ?>


/*price*/
<?php if($config->get('magikplatina_pricecolor_ed')==1) { ?>
.regular-price .price{ color:<?php echo "#".$config->get('magikplatina_pricecolor'); ?> } <?php } ?>
<?php if($config->get('magikplatina_oldpricecolor_ed')==1) { ?>
.old-price .price{ color:<?php echo "#".$config->get('magikplatina_oldpricecolor')."! important"; ?> } <?php } ?>
<?php if($config->get('magikplatina_newpricecolor_ed')==1) { ?>
.special-price .price{ color:<?php echo "#".$config->get('magikplatina_newpricecolor'); ?> } <?php } ?>

/*footer*/
<?php if($config->get('magikplatina_footerbg_ed')==1) { ?>
footer{background:<?php echo "#".$config->get('magikplatina_footerbg')."! important"; ?> } <?php } ?>
<?php if($config->get('magikplatina_footerlinkcolor_ed')==1) { ?>
.footer-middle .links li a{color: <?php echo "#".$config->get('magikplatina_footerlinkcolor'); ?>} 
<?php } ?>
<?php if($config->get('magikplatina_footerlinkhovercolor_ed')==1) { ?>
.footer-middle .links li a:hover{color: <?php echo "#".$config->get('magikplatina_footerlinkhovercolor'); ?>} <?php } ?>
<?php if($config->get('magikplatina_powerbycolor_ed')==1) { ?>
footer .coppyright {color: <?php echo "#".$config->get('magikplatina_powerbycolor')."! important"; ?>} <?php } ?>

</style>
</head>


<body class="<?php echo $class; ?>">
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-6">
            <?php echo $language; ?>
            <?php echo $currency; ?>
            <?php if (!$logged) { ?>
            <p class="welcome-msg hidden-xs"><?php echo $text_welcome; ?></p>
            <?php } else { ?>
            <p class="welcome-msg hidden-xs"><?php echo $text_logged; ?></p>
            <?php } ?> 
          </div>
          <div class="col-xs-6">
            <div class="toplinks">
              <div class="links">
                
                <div class="myaccount">
                  <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><span class="hidden-xs"><?php echo $text_account; ?></span></a>
                </div>

                <div class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><span class="hidden-xs"><?php echo $text_wishlist; ?></span></a>
                </div>

                <div class="check"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><span class="hidden-xs"><?php echo $text_checkout; ?></span></a></div>

               
                <div class="login"><?php if (!$logged) { ?>
                     <a href="<?php echo $login; ?>"><span class="hidden-xs"><?php echo $text_login; ?></span></a>
                 <?php }  else { ?>
                 <a href="<?php echo $logout; ?>"><span class="hidden-xs"><?php echo $text_logout; ?></span></a>
                   <?php } ?>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div><!-- header-top -->

    <div class="header container">
      <div class="row">

          <div class="col-lg-2 col-sm-3 col-md-2">
              <?php if ($logo) { ?>
              <a class="logo" href="<?php echo $home; ?>" title="<?php echo $name; ?>">
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/>
              </a>
              <?php } else { ?>
              <h1><a class="logo" href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?> 
          </div>

          <div class="col-lg-8 col-sm-6 col-md-8">
            <?php if($config->get('magikplatina_headercb_ed')==1){
            echo html_entity_decode($config->get('magikplatina_headercb_content'));}?>
          </div>

          <div class="col-lg-2 col-sm-3 col-md-2">
            <div class="top-cart-contain">
            <div class="mini-cart">
            <?php echo $cart; ?>
            </div>
            <div style="display:none" id="ajaxconfig_info"><a href="#/"></a>
            <input type="hidden" value="">
            <input type="hidden" value="1" id="enable_module">
            <input type="hidden" value="1" class="effect_to_cart">
            <input type="hidden" value="Go to shopping cart" class="title_shopping_cart">
            </div>
            </div>
          </div>

      </div><!-- row -->
    </div><!-- header container -->

  </header><!-- header-container -->

<!-- menu bar code-->
<?php 
if(isset($this->request->get['path'])) {
    $path = $this->request->get['path'];
    $cats = explode('_', $path);
    $cat_id = $cats[0];
} 
else{
  $cat_id = 0;
}?>

<?php 
$this->load->model('setting/setting');
$this->load->model('tool/image');
//echo "<prE>";
if (function_exists('search')) {}
else {
      function search($array, $key, $value)
      {
      $results = array();

      if (is_array($array)) {
      if (isset($array[$key]) && $array[$key] == $value) {
      $results[] = $array;
      }

      foreach ($array as $subarray) {
      $results = array_merge($results, search($subarray, $key, $value));
      }
      }

      return $results;
      }
}
?>
<!-- code end -->

<nav class="">
<div class="container">
  <div class="nav-inner">


      <div class="hidden-desktop" id="mobile-menu">
      <ul class="navmenu">
      <li>
      <div class="menutop">
      <div class="toggle"> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span> <span class="icon-bar">&nbsp;</span></div>
      <h2><?php echo $text_menu;?></h2>
      </div>
      <ul style="display:none;" class="submenu">
      <li>
      <ul class="topnav">
      <li class="level0 nav-6 level-top first parent"><a class="level-top" href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>

      <?php foreach ($categories as $category) { ?>
      <li class="level0 nav-6 level-top first parent"><a class="level-top" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

      <ul class="level0">
      <?php for ($i = 0; $i < count($category['children']);) { ?>

      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($category['children'][$i])) { ?>
      <li class="level1 nav-6-1 first"><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>

      <?php } ?></ul>

      <?php } ?>
      </li>
      <?php } ?>           
      </ul>

      </li>
      </ul>
      </li>
      </ul>
      <!--navmenu-->
      </div>
        <?php 
    if ($categories) { ?>
    <ul class="hidden-xs" id="nav">
      <?php if($config->get('magikplatina_home_option')==1){ ?>
      <li class="level0 parent drop-menu active" id="nav-home"><a class="level-top" href="<?php echo $home;?>"><span><?php echo $text_home;?></span></a></li><?php }?>

      <?php foreach ($categories1 as $category) { ?>
      <li class="level0 level-top parent <?php if($category['category_id']==$cat_id) {echo 'active';}?>">
      <?php if($category['category_id']==$cat_id) {?>
      <script>jQuery("#nav-home").removeClass('active');
      </script>
      <?php }?>

     
      <a class="level-top" href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span>  
      </a>

      
      <?php if ($category['children']) { ?>
      <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
        
        <div class="level0-wrapper2">     
     

          <div class="nav-block nav-block-center">
<!--  -->
              <?php for ($i = 0; $i < count($category['children']);) { ?>

              <ul class="level0">
              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
              <?php for (; $i < $j; $i++) { ?>
              <?php if (isset($category['children'][$i])) { ?>
              <li class="level1 nav-6-1 parent item">

             

              <a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
              <?php //print_r($category['children'][$i]['child2']);
              if(count($category['children'][$i]['children']) )
              {?>
              <ul class="level1">

              <?php for($m=0;$m<count($category['children'][$i]['children']);$m++){
              ?>
              <li class="level2 nav-6-1-1"><a href="<?php echo $category['children'][$i]['children'][$m]['href'];?>"><span><?php echo $category['children'][$i]['children'][$m]['name']?></span></a></li>
              <?php  }?>
              </ul>
              <?php }?>
              
              </li>
              <?php } ?>
              <?php } ?>
              </ul>

              <?php } ?>  
<!--  -->
          </div><!-- mcalss -->

         

      </div><!-- level0-wrapper2 -->

    

    </div>  
      <?php } ?>
      </li>
    <?php } ?>
    
    <?php if($this->config->get('magikplatina_menubar_cb') == 1)
    { echo '<li class="nav-custom-link level0 level-top parent"><a class="level-top"><span>'.$config->get('magikplatina_menubar_cbtitle').'</span></a><div class="level0-wrapper custom-menu" style="left: 0px; display: none;"><div class="header-nav-dropdown-wrapper clearer">'.html_entity_decode($config->get('magikplatina_menubar_cbcontent')).'</div></div></li>';
    }?>
    
    </ul>
    <?php } ?>


      <?php echo $search; ?>
  
  </div><!-- nav-inner -->
</div>
</nav>