<div id="magik-slideshow" class="magik-slideshow">
<div class="container">
	<div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container' >
        <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
      		<ul>
      			<?php $cnt = 0; foreach ($slider as $slide) { ?>      				
                           <style>#ms<?php echo $cnt?>{ cursor: pointer;}</style>
                            <?php if(isset($slide['link']) && $slide['link']!='') { ?>
                            <script type="text/javascript">
                            $(document).ready(function(){
                            $("#ms<?php echo $cnt?>").click(function() {
                            window.open('<?php echo str_replace('&amp;', '&', $slide['link']); ?>','_blank');
                            });   });  
                            </script>
                            <?php } ?>
                    
                    <li id="ms<?php echo $cnt ?>" data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb="<?php echo $slide['image']?>">
      					<img  src="<?php echo $slide['image']?>" data-bgposition='left top'  data-bgfit='cover' data-bgrepeat='no-repeat' title="<?php if($slide['title']) {echo $slide['title'];}?>" />
      					<?php if($slide['description']) { echo $slide['description'];}?>
      				</li>
      			<?php $cnt++;}?>
      		</ul>
        </div><!-- rev_slider_4 -->
    </div><!-- rev_slider_4_wrapper -->
</div><!-- container -->
</div>
<script type='text/javascript'>
        jQuery(document).ready(function(){
            jQuery('#rev_slider_4').show().revolution({
                dottedOverlay: 'none',
                delay: 5000,
                startwidth: 1170,
                startheight: 600,

                hideThumbs: 200,
                thumbWidth: 200,
                thumbHeight: 50,
                thumbAmount: 2,

                navigationType: 'thumb',
                navigationArrows: 'solo',
                navigationStyle: 'round',

                touchenabled: 'on',
                onHoverStop: 'on',
                
                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,
            
                spinner: 'spinner0',
                keyboardNavigation: 'off',

                navigationHAlign: 'center',
                navigationVAlign: 'bottom',
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: 'left',
                soloArrowLeftValign: 'center',
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: 'right',
                soloArrowRightValign: 'center',
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: 'on',
                fullScreen: 'off',

                stopLoop: 'off',
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: 'off',

                autoHeight: 'off',
                forceFullWidth: 'on',
                fullScreenAlignForce: 'off',
                minFullScreenHeight: 0,
                hideNavDelayOnMobile: 1500,
            
                hideThumbsOnMobile: 'off',
                hideBulletsOnMobile: 'off',
                hideArrowsOnMobile: 'off',
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0,
                fullScreenOffsetContainer: ''
            });
        });
        </script>