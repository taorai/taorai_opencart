<?php echo $header; ?>
<?php global $config;?>
<!-- <script type="text/javascript" src="view/javascript/colorpicker/colorpicker-color.js"></script>
<script type="text/javascript" src="view/javascript/colorpicker/colorpicker.js"></script> -->
<link rel="stylesheet" href="view/javascript/colorpicker/bootstrap-3.0.0.min.css">
<link rel="stylesheet" href="view/javascript/colorpicker/pick-a-color-1.2.3.min.css">
<link rel="stylesheet" href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css">



<style type="text/css">
.heading{
color: #279882;
font-size: 24px!important;
}
.thead{
color: #e74c3c!important;
font-weight: bold;
text-transform: uppercase
}
</style>

<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-magikplatina" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-magikplatina" class="form-horizontal">
          

 <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
<li class="active"><a href="#general" data-toggle="tab">General</a></li>
<li><a href="#colors" data-toggle="tab">Colors</a></li>
<li><a href="#fonts" data-toggle="tab">Fonts</a></li>
<li><a href="#footer" data-toggle="tab">Footer</a></li>
<?php if($config->get('config_maintenance')){ ?>
<li><a href="#maintenance" data-toggle="tab">Maintenance</a></li>
<?php } ?>
<li><a href="#support" data-toggle="tab">Support</a></li>
</ul>
<div id="my-tab-content" class="tab-content">
<div class="tab-pane active" id="general">
<br>
  <b class="heading">GENERAL THEME SETTINGS</b><hr>
   

    <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_home_option">Home option in menu:</label>
            <div class="col-sm-10">
              <select name="magikplatina_home_option" id="input-magikplatina_home_option" class="form-control">
                <?php if ($magikplatina_home_option) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_scroll_totop">Show scroll to top button:</label>
            <div class="col-sm-10">
              <select name="magikplatina_scroll_totop" id="input-magikplatina_scroll_totop" class="form-control">
                <?php if ($magikplatina_scroll_totop) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


        <div class="form-group">
        <label class="col-sm-2 control-label" for="input-magikplatina_animation_effect">Animation Effect:</label>
        <div class="col-sm-10">
        <select name="magikplatina_animation_effect" id="input-magikplatina_animation_effect" class="form-control">
        <?php if ($magikplatina_animation_effect) { ?>
        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
        <option value="0"><?php echo $text_disabled; ?></option>
        <?php } else { ?>
        <option value="1"><?php echo $text_enabled; ?></option>
        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
        <?php } ?>
        </select>
        </div>
        </div>

          

                  
<hr><b class="thead">PRODUCTS "SALE" LABEL</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_sale_label">Show "Sale" label for products with discount:</label>
            <div class="col-sm-10">
              <select name="magikplatina_sale_label" id="input-magikplatina_sale_label" class="form-control">
                <?php if ($magikplatina_sale_label) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_sale_labeltitle">Sale label title:</label>
            <div class="col-sm-10">
            <input name="magikplatina_sale_labeltitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_sale_labeltitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_sale_labelcolor">Sale label color:</label>
            <div class="col-sm-10">
            <input name="magikplatina_sale_labelcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_sale_labelcolor; ?>" class="pick-a-color form-control"/>
            </div>
          </div>


          <!-- end -->

<hr><b class="thead">MENUBAR CUSTOM BLOCK</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_menubar_cb">Enable custom Block:</label>
            <div class="col-sm-10">
              <select name="magikplatina_menubar_cb" id="input-magikplatina_menubar_cb" class="form-control">
                <?php if ($magikplatina_menubar_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_menubar_cbtitle">Block title:</label>
            <div class="col-sm-10">
            <input name="magikplatina_menubar_cbtitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_menubar_cbtitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_menubar_cbcontent">Block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_menubar_cbcontent" placeholder="Enetr text here" id="input-magikplatina_menubar_cbcontent" class="form-control"><?php echo $magikplatina_menubar_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikplatina_menubar_cbcontent').summernote({height: 300});
          </script> 


<hr><b class="thead">PRODUCT CUSTOM TABS</b><hr>

       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_product_ct">Enable custom Tab1:</label>
            <div class="col-sm-10">
              <select name="magikplatina_product_ct" id="input-magikplatina_product_ct" class="form-control">
                <?php if ($magikplatina_product_ct) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_product_cttitle">Tab1 title:</label>
            <div class="col-sm-10">
            <input name="magikplatina_product_cttitle" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_product_cttitle; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_product_ctcontent">Tab1 content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_product_ctcontent" placeholder="Enetr text here" id="input-magikplatina_product_ctcontent" class="form-control"><?php echo $magikplatina_product_ctcontent; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-magikplatina_product_ctcontent').summernote({height: 300});
        </script>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_product_ct2">Enable custom Tab2:</label>
            <div class="col-sm-10">
              <select name="magikplatina_product_ct2" id="input-magikplatina_product_ct2" class="form-control">
                <?php if ($magikplatina_product_ct2) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_product_ct2title">Tab2 title:</label>
            <div class="col-sm-10">
            <input name="magikplatina_product_ct2title" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_product_ct2title; ?>" class="form-control"/>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_product_ct2content">Tab2 content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_product_ct2content" placeholder="Enetr text here" id="input-magikplatina_product_ct2content" class="form-control"><?php echo $magikplatina_product_ct2content; ?></textarea>
                  </div>
                </div>
        <script type="text/javascript">
        $('#input-magikplatina_product_ct2content').summernote({height: 300});
        </script>  

<?php /* ?>
<hr><b class="thead">FOOTER FEATURES BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_footer_fb">Enable footer feature block:</label>
            <div class="col-sm-10">
              <select name="magikplatina_footer_fb" id="input-magikplatina_footer_fb" class="form-control">
                <?php if ($magikplatina_footer_fb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_footer_fbcontent">Footer feature block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_footer_fbcontent" placeholder="Enetr text here" id="input-magikplatina_footer_fbcontent" class="form-control"><?php echo $magikplatina_footer_fbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikplatina_footer_fbcontent').summernote({height: 300});
          </script>  <?php */ ?>

<hr><b class="thead">FOOTER CUSTOM BLOCK</b><hr>
        
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_footer_cb">Enable footer custom block:</label>
            <div class="col-sm-10">
              <select name="magikplatina_footer_cb" id="input-magikplatina_footer_cb" class="form-control">
                <?php if ($magikplatina_footer_cb) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_footer_cbcontent">Footer custom block content:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_footer_cbcontent" placeholder="Enetr text here" id="input-magikplatina_footer_cbcontent" class="form-control"><?php echo $magikplatina_footer_cbcontent; ?></textarea>
                  </div>
                </div>
          <script type="text/javascript">
          $('#input-magikplatina_footer_cbcontent').summernote({height: 300});
          </script>      


</div>
<div class="tab-pane" id="colors">
<br>
<b class="heading">THEME COLORS</b><br>
In this section, you can change theme colors. To change the color of element just click inside text field and use color picker.

<hr><b class="thead">MAIN</b><hr>

       <?php if(empty($magikplatina_body_bg)) { $magikplatina_body_bg="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_body_bg">Body background:</label>
            <div class="col-sm-2">
                <select name="magikplatina_body_bg_ed" id="input-magikplatina_body_bg_ed" class="form-control">
                <?php if ($magikplatina_body_bg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_body_bg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_body_bg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>

      <?php if(empty($magikplatina_fontcolor)) { $magikplatina_fontcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_fontcolor">Body font color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_fontcolor_ed" id="input-magikplatina_fontcolor_ed" class="form-control">
                <?php if ($magikplatina_fontcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_fontcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_fontcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>
          

      <?php if(empty($magikplatina_linkcolor)) { $magikplatina_linkcolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_linkcolor">Link color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_linkcolor_ed" id="input-magikplatina_linkcolor_ed" class="form-control">
                <?php if ($magikplatina_linkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_linkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_linkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>


       <?php if(empty($magikplatina_linkhovercolor)) { $magikplatina_linkhovercolor="#23527c"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_linkhovercolor">Link hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_linkhovercolor_ed" id="input-magikplatina_linkhovercolor_ed" class="form-control">
                <?php if ($magikplatina_linkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_linkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_linkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #23527c</div>
          </div>

<hr><b class="thead">HEADER</b><hr>


       <?php if(empty($magikplatina_headerbg)) { $magikplatina_headerbg="#3b4348"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_headerbg">Header background:</label>
            <div class="col-sm-2">
                <select name="magikplatina_headerbg_ed" id="input-magikplatina_headerbg_ed" class="form-control">
                <?php if ($magikplatina_headerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_headerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_headerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #3b4348</div>
          </div>

      <?php if(empty($magikplatina_headerlinkcolor)) { $magikplatina_headerlinkcolor="#aaaaaa"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_headerlinkcolor">Header link color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_headerlinkcolor_ed" id="input-magikplatina_headerlinkcolor_ed" class="form-control">
                <?php if ($magikplatina_headerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_headerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_headerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #aaaaaa</div>
          </div>
          

      <?php if(empty($magikplatina_headerlinkhovercolor)) { $magikplatina_headerlinkhovercolor="#d12631"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_headerlinkhovercolor">Header link hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_headerlinkhovercolor_ed" id="input-magikplatina_headerlinkhovercolor_ed" class="form-control">
                <?php if ($magikplatina_headerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_headerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_headerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #d12631</div>
          </div>


       <?php if(empty($magikplatina_headerclcolor)) { $magikplatina_headerclcolor="#aaaaaa"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_headerclcolor">Header currency/language links color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_headerclcolor_ed" id="input-magikplatina_headerclcolor_ed" class="form-control">
                <?php if ($magikplatina_headerclcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_headerclcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_headerclcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #aaaaaa</div>
          </div>

<hr><b class="thead">MAIN MENU</b><hr>


       <?php if(empty($magikplatina_mmbgcolor)) { $magikplatina_mmbgcolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_mmbgcolor">Main menu background color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_mmbgcolor_ed" id="input-magikplatina_mmbgcolor_ed" class="form-control">
                <?php if ($magikplatina_mmbgcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_mmbgcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_mmbgcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($magikplatina_mmlinkscolor)) { $magikplatina_mmlinkscolor="#777777"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_mmlinkscolor">Main menu links color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_mmlinkscolor_ed" id="input-magikplatina_mmlinkscolor_ed" class="form-control">
                <?php if ($magikplatina_mmlinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_mmlinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_mmlinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #777777</div>
          </div>


       <?php if(empty($magikplatina_mmlinkshovercolor)) { $magikplatina_mmlinkshovercolor="#333333"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_mmlinkshovercolor">Main menu links Hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_mmlinkshovercolor_ed" id="input-magikplatina_mmlinkshovercolor_ed" class="form-control">
                <?php if ($magikplatina_mmlinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_mmlinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_mmlinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #333333</div>
          </div>


      <?php if(empty($magikplatina_mmslinkscolor)) { $magikplatina_mmslinkscolor="#3b4348"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_mmslinkscolor">Main menu sublinks color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_mmslinkscolor_ed" id="input-magikplatina_mmslinkscolor_ed" class="form-control">
                <?php if ($magikplatina_mmslinkscolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_mmslinkscolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_mmslinkscolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #3b4348</div>
          </div>

      <?php if(empty($magikplatina_mmslinkshovercolor)) { $magikplatina_mmslinkshovercolor="#3b4348"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_mmslinkshovercolor">Main menu sublinks Hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_mmslinkshovercolor_ed" id="input-magikplatina_mmslinkshovercolor_ed" class="form-control">
                <?php if ($magikplatina_mmslinkshovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_mmslinkshovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_mmslinkshovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #3b4348</div>
          </div>


<hr><b class="thead">BUTTONS</b><hr>

<!-- #0088cc -->
       <?php if(empty($magikplatina_buttoncolor)) { $magikplatina_buttoncolor=""; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_buttoncolor">Button color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_buttoncolor_ed" id="input-magikplatina_buttoncolor_ed" class="form-control">
                <?php if ($magikplatina_buttoncolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_buttoncolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_buttoncolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label"><!-- Default: #0088cc --></div>
          </div>

      <?php if(empty($magikplatina_buttonhovercolor)) { $magikplatina_buttonhovercolor="#cf3341"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_buttonhovercolor">Button Hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_buttonhovercolor_ed" id="input-magikplatina_buttonhovercolor_ed" class="form-control">
                <?php if ($magikplatina_buttonhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_buttonhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_buttonhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cf3341</div>
          </div>


      <hr><b class="thead">PRODUCT</b><hr>


       <?php if(empty($magikplatina_pricecolor)) { $magikplatina_pricecolor="#cf3341"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_pricecolor">Price color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_pricecolor_ed" id="input-magikplatina_pricecolor_ed" class="form-control">
                <?php if ($magikplatina_pricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_pricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_pricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cf3341</div>
          </div>

      <?php if(empty($magikplatina_oldpricecolor)) { $magikplatina_oldpricecolor="#777777"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_oldpricecolor">Old Price color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_oldpricecolor_ed" id="input-magikplatina_oldpricecolor_ed" class="form-control">
                <?php if ($magikplatina_oldpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_oldpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_oldpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #777777</div>
          </div>


      <?php if(empty($magikplatina_newpricecolor)) { $magikplatina_newpricecolor="#cf3341"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_newpricecolor">New Price color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_newpricecolor_ed" id="input-magikplatina_newpricecolor_ed" class="form-control">
                <?php if ($magikplatina_newpricecolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_newpricecolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_newpricecolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cf3341</div>
          </div>


<hr><b class="thead">FOOTER</b><hr>


       <?php if(empty($magikplatina_footerbg)) { $magikplatina_footerbg="#3b4348"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_footerbg">Footer background:</label>
            <div class="col-sm-2">
                <select name="magikplatina_footerbg_ed" id="input-magikplatina_footerbg_ed" class="form-control">
                <?php if ($magikplatina_footerbg_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_footerbg" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_footerbg; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #3b4348</div>
          </div>

      <?php if(empty($magikplatina_footerlinkcolor)) { $magikplatina_footerlinkcolor="#aaaaaa"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_footerlinkcolor">Footer links color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_footerlinkcolor_ed" id="input-magikplatina_footerlinkcolor_ed" class="form-control">
                <?php if ($magikplatina_footerlinkcolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_footerlinkcolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_footerlinkcolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #aaaaaa</div>
          </div>
          

      <?php if(empty($magikplatina_footerlinkhovercolor)) { $magikplatina_footerlinkhovercolor="#FFFFFF"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_footerlinkhovercolor">Footer links hover color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_footerlinkhovercolor_ed" id="input-magikplatina_footerlinkhovercolor_ed" class="form-control">
                <?php if ($magikplatina_footerlinkhovercolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_footerlinkhovercolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_footerlinkhovercolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #FFFFFF</div>
          </div>


       <?php if(empty($magikplatina_powerbycolor)) { $magikplatina_powerbycolor="#cccccc"; }  ?>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_powerbycolor">Footer powered by text color:</label>
            <div class="col-sm-2">
                <select name="magikplatina_powerbycolor_ed" id="input-magikplatina_powerbycolor_ed" class="form-control">
                <?php if ($magikplatina_powerbycolor_ed) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
                </select>
            </div>
            <div class="col-sm-6">
            <input name="magikplatina_powerbycolor" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_powerbycolor; ?>" class="pick-a-color form-control"/>
            </div>
            <div class="col-sm-2 control-label">Default: #cccccc</div>
          </div>

                 

</div>
<div class="tab-pane" id="fonts">
<br><b>THEME FONTS</b><br>
Choose font from list
<hr>


<div class="form-group">
            <label class="col-sm-2 control-label" for="input-magikplatina_fonttransform">Font transform:</label>
            <div class="col-sm-8">
              <?php $gfonts = "Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Aguafina Script,Aladin,Aldrich,Alegreya,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra SC,Amaranth,Amatic SC,Amethysta,Andada,Andika,Annie Use Your Telescope,Anonymous Pro,Antic,Anton,Arapey,Arbutus,Architects Daughter,Arial,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Bad Script,Balthazar,Bangers,Basic,Baumans,Belgrano,Bentham,Bevan,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambo,Candal,Cantarell,Cardo,Carme,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chelsea Market,Cherry Cream Soda,Chewy,Chicle,Chivo,Coda,Coda Caption,Comfortaa,Comic Sans MS,Coming Soon,Concert One,Condiment,Contrail One,Convergence,Cookie,Copse,Corben,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Crushed,Cuprum,Damion,Dancing Script,Dawning of a New Day,Days One,Delius,Delius Swash Caps,Delius Unicase,Devonshire,Didact Gothic,Diplomata,Diplomata SC,Dorsa,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,EB Garamond,Eater,Electrolize,Emblema One,Engagement,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Federant,Federo,Felipa,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Fredericka the Great,Fresca,Frijole,Fugaz One,Galdeano,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,Give You Glory,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Goudy Bookletter 1911,Gravitas One,Gruppo,Gudea,Habibi,Hammersmith One,Handlee,Herr Von Muellerhoff,Holtwood One SC,Homemade Apple,Homenaje,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Iceberg,Iceland,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italianno,Jim Nightshade,Jockey One,Josefin Sans,Josefin Slab,Judson,Julee,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kameron,Kaushan Script,Kelly Slab,Kenia,Knewave,Kotta One,Kranky,Krastra,Kristi,La Belle Aurore,Lancelot,Lato,League Script,Leckerli One,Lekton,Lemon,Lilita One,Limelight,Linden Hill,Lobster,Lobster Two,Lora,Love Ya Like A Sister,Loved by the King,Luckiest Guy,Lusitana,Lucida Grande,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Marck Script,Marko One,Marmelad,Marvel,Mate,Mate SC,Maven Pro,Meddon,MedievalSharp,Medula One,Megrim,Merienda One,Merriweather,Metamorphous,Metrophobic,Michroma,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modern Antiqua,Molengo,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Mountains of Christmas,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Neucha,Neuton,News Cycle,Niconne,Nixie One,Nobile,Norican,Nosifer,Nothing You Could Do,Noticia Text,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,Numans,Nunito,Old Standard TT,Oldenburg,Open Sans,Open Sans Condensed,Orbitron,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Pacifico,Parisienne,Passero One,Passion One,Patrick Hand,Patua One,Paytone One,Permanent Marker,Petrona,Philosopher,Piedra,Pinyon Script,Plaster,Play,Playball,Playfair Display,Podkova,Poller One,Poly,Pompiere,Port Lligat Sans,Port Lligat Slab,Prata,Princess Sofia,Prociono,Puritan,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Qwigley,Radley,Raleway,Rammetto One,Rancho,Rationale,Redressed,Reenie Beanie,Ribeye,Ribeye Marrow,Righteous,Rochester,Rock Salt,Rokkitt,Ropa Sans,Rosario,Rouge Script,Ruda,Ruge Boogie,Ruluko,Ruslan Display,Ruthie,Sail,Salsa,Sancreek,Sansita One,sans-serif,Sarina,Satisfy,Schoolbell,Shadows Into Light,Shanti,Share,Shojumaru,Short Stack,Sigmar One,Signika,Signika Negative,Sirin Stencil,Six Caps,Slackey,Smokum,Smythe,Sniglet,Snippet,Sofia,Sonsie One,Sorts Mill Goudy,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Sue Ellen Francisco,Sunshiney,Supermercado One,Swanky and Moo Moo,Syncopate,Tangerine,Tahoma,Times New Roman,Telex,Tenor Sans,Terminal Dosis,The Girl Next Door,Tienne,Tinos,Titan One,Trade Winds,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,VT323,Varela,Varela Round,Vast Shadow,Vibur,Vidaloka,Viga,Volkhov,Vollkorn,Voltaire,Verdana,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Wellfleet,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada";
      $magikplatinafonts = explode(',', $gfonts);
      ?>

<select name="magikplatina_fonttransform" id="input-magikplatina_fonttransform" class="form-control">
<option value="" <?php if ($magikplatina_fonttransform=='') {?>selected<?php } ?>  ></option>
<?php foreach ($magikplatinafonts as $f ){ ?>
<option value="<?php echo $f; ?>" <?php if($magikplatina_fonttransform==$f){echo 'selected';} ?>>
  <?php echo $f; ?>
</option>
<?php } ?>
</select>
            </div>

            <div class="col-sm-2 control-label"></div>
          </div>



</div>
<div class="tab-pane" id="footer">
<br>
<p align="left">Fill in contact details you want to be displayed in your custom footer. If you don't want some of contact details to be displayed, just leave these fields empty.
 </p>
<hr>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_address">Address:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_address" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_address; ?>"/>
              </div>
          </div>

         


          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_phone">Phone:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_phone" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_phone; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_email">Email:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_email" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_email; ?>"/>
              </div>
          </div>
<hr>
<p align="left">Leave url field empty if you don't want to display this social icon in footer.</p>
<hr>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_fb">Facebook:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_fb" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_fb; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_twitter">Twitter:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_twitter" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_twitter; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_gglplus">Google Plus:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_gglplus" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_gglplus; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_rss">RSS:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_rss" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_rss; ?>"/>
              </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_pinterest">Pinterest:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_pinterest" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_pinterest; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_linkedin">Linkedin:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_linkedin" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_linkedin; ?>"/>
              </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="magikplatina_youtube">You Tube:</label>
            <div class="col-sm-10">
              <input class="form-control" name="magikplatina_youtube" cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" value="<?php echo $magikplatina_youtube; ?>"/>
              </div>
          </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-magikplatina_powerby">Powered by text:</label>
                  <div class="col-sm-10">
                    <textarea name="magikplatina_powerby" placeholder="Enetr text here" id="input-magikplatina_powerby" class="form-control"><?php echo $magikplatina_powerby; ?></textarea>
                  </div>
                </div>

 <script type="text/javascript">
$('#input-magikplatina_powerby').summernote({height: 300});
</script> 
             
 
</div>
<?php 
if($config->get('config_maintenance')){?>
<div class="tab-pane" id="maintenance">
<br>
<p>Choose date to display on Maintenance page</p><hr>


                <div class="form-group">
              <label class="control-label col-sm-3" for="input-magikplatina_maintenancedate">Date</label>
              <div class="col-sm-7 input-group datetime">
              <input type="text" name="magikplatina_maintenancedate" value="<?php echo $magikplatina_maintenancedate ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-magikplatina_maintenancedate" class="form-control" />
              <span class="input-group-btn">
              <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
              </span></div>
              </div>


</div>
<?php } ?>

<div class="tab-pane" id="support">
<h1 class="heading">MagikPlatina theme for Open Cart 2.1.0.1 </h1><hr>
  <p style="font-weight:bold">Theme designed and developed by <a href="http://themeforest.net/user/magikcommerce">Magikcommerce</a>.</p>
<p>Thank you for buying this theme! Contact us for any question or problems regarding the theme at - support@magikcommerce.com.</p>
<p>If you like theme dont forget to rate theme with stars (you can do it in your Downloads tab, inside your ThemeForest profile. Just click on stars! This little thing helps me to make new theme updates! Thank you!</p>
</div>
</div> 

            
        </form>
      </div>
	</div>
  </div>
</div>



<!-- <script src="build/dependencies/jquery-1.9.1.min.js"></script> -->
  <script src="view/javascript/colorpicker/tinycolor-0.9.15.min.js"></script>
  <script src="view/javascript/colorpicker/pick-a-color-1.2.3.min.js"></script>  
  
  <script type="text/javascript">
  
    $(document).ready(function () {

      $(".pick-a-color").pickAColor({
        showSpectrum            : true,
        showSavedColors         : true,
        saveColorsPerElement    : true,
        fadeMenuToggle          : true,
        showAdvanced            : true,
        showBasicColors         : true,
        showHexInput            : true,
        allowBlank              : true,
        inlineDropdown          : true
      });
      
    });
  
    </script>
  <script type="text/javascript"><!--
    $('.datetime').datetimepicker({
      pickDate: true,
      pickTime: true
    });
//--></script>
<?php echo $footer; ?>