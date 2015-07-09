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

$(document).ready(function(){
	slideTableDown();
	slideTableUp();
});

var slideTableDown = function(){
	$('span.plus').on('click',function(){
		$(this).addClass('none');
		$(this).next('span').removeClass('none');
		$(this).parent().parent().find('table').velocity('transition.perspectiveDownIn');
		$(this).parent().parent().parent().find('.total').velocity('transition.perspectiveUpIn');
	});
};

var slideTableUp = function(){
	$('span.minus').on('click',function(){
		$(this).addClass('none');
		$(this).prev('span').removeClass('none');
		$(this).parent().parent().find('table').velocity('transition.perspectiveDownOut');
		$(this).parent().parent().parent().find('.total').velocity('transition.perspectiveUpOut');

	});
};