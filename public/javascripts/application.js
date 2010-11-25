jQuery(function(){

	jQuery('.datepicker').datepicker();

/*
	var root = (location.host == 'ccls.berkeley.edu')?'/buffler':''
	jQuery.getScript(root + 

	jQuery.getScript(
		'/javascripts/cache_helper.js?caller=' +
		location.pathname );

		location.pathname.replace(new RegExp('^' + root),'') );
*/
/*
	jQuery.getScript('/pages/translate.js');
	jQuery.getScript('/users/menu.js');
	if( location.pathname == '/' ){
		jQuery.getScript('/home_page_pics/random.js');
	}
*/
});

jQuery(window).resize(function(){
	resize_text_areas()
});

jQuery(window).load(function(){
/*
	This MUST be in window/load, not the normal document/ready, 
	for Google Chrome to get correct values
*/
	resize_text_areas()
});

function resize_text_areas() {
	jQuery('textarea.autosize').each(function(){
		new_width = $(this).parent().innerWidth() + 
			$(this).parent().position().left - 
			$(this).position().left - 
			parseInt($(this).css('margin-left')) - 
			parseInt($(this).css('margin-right')) - 
			parseInt($(this).css('padding-left')) - 
			parseInt($(this).css('padding-right')) - 
			parseInt($(this).css('border-left-width')) - 
			parseInt($(this).css('border-right-width') )
		$(this).css('width',new_width-10)	/* take 10 more for good measure */
	})
}
