// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require velocity.min
//= require velocity.ui.min
//= require bootstrap.min
//= require turbolinks
//= require_tree .

var slideTableDown = function(){
	$('span.plus').on('click',function(){
		$(this).addClass('none');
		$(this).next('span').removeClass('none');
		$(this).parent().parent().find('table').velocity('transition.slideDownBigIn', {duration:1000});
		$(this).parent().parent().parent().find('.total').velocity('transition.perspectiveUpIn');
	});
};

var slideTableUp = function(){
	$('span.minus').on('click',function(){
		$(this).addClass('none');
		$(this).prev('span').removeClass('none');
		$(this).parent().parent().find('table').velocity('transition.slideUpBigOut', {duration:1000});
		$(this).parent().parent().parent().find('.total').velocity('transition.perspectiveUpOut');
	});
};

var changeDiffColor = function(){
	var value = $('span.difference').html();
	value = Number(value.replace(/[^0-9\.-]+/g,""));
	if (value < 0) {
		$('span.difference').before('<span class="difference">(</span>').after('<span class="difference">)</span>');
		$('span.difference').css({'color':'red'})
	} else if (value == 0) {
		$('span.difference').css({'color':'black'})
	} else {
		$('span.difference').css({'color':'green'})
	}
};

var ready = function(){
	slideTableDown();
	slideTableUp();
	changeDiffColor();
};

$(document).ready(ready)
$(document).on('page:load', ready);