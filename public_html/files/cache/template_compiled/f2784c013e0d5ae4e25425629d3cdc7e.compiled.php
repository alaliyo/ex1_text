<?php if(!defined("__XE__"))exit;?><!--#Meta:widgets/swiperSlider/skins/default/swiper.js--><?php $__tmp=array('widgets/swiperSlider/skins/default/swiper.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:widgets/swiperSlider/skins/default/swiper.css--><?php $__tmp=array('widgets/swiperSlider/skins/default/swiper.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:widgets/swiperSlider/skins/default/swiper-widget.css--><?php $__tmp=array('widgets/swiperSlider/skins/default/swiper-widget.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:widgets/swiperSlider/skins/default/webfont.css--><?php $__tmp=array('widgets/swiperSlider/skins/default/webfont.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<?php if($__Context->widget_info->identifying_way=='generate_random_num'){ ?>
	<?php  $__Context->slide_num = rand(0,999999) ?>
<?php }else{ ?>
	<?php if(!$__Context->_SESSION['swiper_widget_num']){ ?>
		<?php 
			$__Context->_SESSION['swiper_widget_num'] = 1;
			$__Context->slide_num = 1;
		 ?>
	<?php }else{ ?>
		<?php 
			$__Context->_SESSION['swiper_widget_num']++;
			$__Context->slide_num = $__Context->_SESSION['swiper_widget_num'];
		 ?>
	<?php } ?>
<?php } ?>
<style>
	:root {
		--swiper-theme-color: #ffffff;
	}
	.swiper-widget<?php echo $__Context->slide_num ?>-container{
		margin: 0 auto;
		<?php if($__Context->widget_info->slide_max_width > 0){ ?>
		max-width:<?php echo $__Context->widget_info->slide_max_width ?>px;
		<?php } ?>
		height: <?php echo $__Context->widget_info->slide_height ?>px;
	}
	.swiper-widget<?php echo $__Context->slide_num ?>-container > div > div > div > div {
		padding: 0 <?php echo $__Context->widget_info->content_position ?>% !important;
		text-align: <?php echo $__Context->widget_info->content_align ?>;
	}
	.swiper-widget<?php echo $__Context->slide_num ?>-container h1 {
		font-size: <?php echo $__Context->widget_info->subject_font_size ?>px;
	}
	.swiper-widget<?php echo $__Context->slide_num ?>-container p {
		font-size: <?php echo $__Context->widget_info->content_font_size ?>px;
	}
</style>
<!-- Swiper -->
<div class="visual swiper-widget-container swiper-widget<?php echo $__Context->slide_num ?>-container">
	<!-- 슬라이드 -->
	<div class="swiper-wrapper">
		<?php if($__Context->widget_info->content_items&&count($__Context->widget_info->content_items))foreach($__Context->widget_info->content_items as $__Context->key=>$__Context->item){ ?><div <?php if($__Context->item->getThumbnail()){ ?>style="background-image:url('<?php echo $__Context->item->getThumbnail() ?>');"<?php }else{ ?> style="background:#F0F0F0;"<?php } ?> class="swiper-slide">
			<div>
				<div>
					<?php if(in_array("title",$__Context->widget_info->option_view_arr)){ ?>
						<h1 onclick="js_go('<?php echo $__Context->item->getLink() ?>','<?php echo $__Context->widget_info->hyperlink_target ?>')" url="<?php echo $__Context->item->getLink() ?>" ><?php echo $__Context->item->variables["title"] ?></h1>
					<?php } ?>
					  
					<?php if(in_array("content",$__Context->widget_info->option_view_arr)){ ?>
						<p onclick="js_go('<?php echo $__Context->item->getLink() ?>','<?php echo $__Context->widget_info->hyperlink_target ?>')" url="<?php echo $__Context->item->getLink() ?>" ><?php echo $__Context->item->variables["content"] ?></p>
					<?php } ?>
				</div>
			</div>
		</div><?php } ?>
	</div>
	
	<?php if($__Context->widget_info->pager=='true'){ ?>
    <div class="swiper-pagination"></div>
    <?php } ?>
    
    <?php if($__Context->widget_info->direction=='true'){ ?>
    <div class="swiper-button-prev swiper-widget<?php echo $__Context->slide_num ?>-button-prev"></div>
	<div class="swiper-button-next swiper-widget<?php echo $__Context->slide_num ?>-button-next"></div>
	<?php } ?>
</div>	
<!-- END:슬라이드 -->
<script>
	function js_go(url,new_window){
		if(url){
			if(new_window == "Y"){
			window.open(url, '_blank');	
			}else{
				location.href = url;				
			}	
		}
	}
	jQuery(document).ready(function() {
		var swiper = new Swiper('.swiper-widget<?php echo $__Context->slide_num ?>-container', {
			effect : '<?php echo $__Context->widget_info->ani ?>',
			slidesPerView: 1,
			autoplay : {
				delay: <?php echo $__Context->widget_info->pause ?>000,
			},
			loop : true,
			<?php if($__Context->widget_info->pager=='true'){ ?>
			pagination : {
				el: '.swiper-widget<?php echo $__Context->slide_num ?>-container .swiper-pagination',
				clickable: true,
			},
			<?php } ?>
			navigation: {
				nextEl: '.swiper-widget<?php echo $__Context->slide_num ?>-button-next', 
				prevEl: '.swiper-widget<?php echo $__Context->slide_num ?>-button-prev',
				hideOnClick: <?php echo $__Context->widget_info->direction ?>,
			},
		});
		jQuery(".swiper-widget-container").hover(function(){
			swiper.autoplay.stop();
		} ,
		function(){
			swiper.autoplay.start();
		})
	});
</script>
<!-- ETC -->
