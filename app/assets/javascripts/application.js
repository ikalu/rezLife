// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap
//= require jquery.min.js
//= require scripts.js
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var klass = '';

function disable() { 

		$(".halls").find("select option[value*= 'Freshman']").prop("disabled", true);
		$(".halls").find("select option[value*='Sophomore']").prop("disabled", true);
		$(".halls").find("select option[value*='Junior']").prop("disabled", true);
		$(".halls").find("select option[value*='Senior']").prop("disabled", true);
		$(".halls").find("select option[value*='Honors']").prop("disabled", true);
}

function enableHallsBasedOnStatus(klass) {

	if (klass == 'Freshman') {
		$(".halls").find("select option[value*= 'Freshman']").prop("disabled", false);
	} else if (klass == 'Sophomore') {
		$(".halls").find("select option[value*='Sophomore']").prop("disabled", false);
	} else if (klass == 'Junior') {
		$(".halls").find("select option[value*='Junior']").prop("disabled", false);
	} else if (klass == 'Senior') {
		$(".halls").find("select option[value*='Senior']").prop("disabled", false);
	}
}

function disableHallsBasedOnDisabledStatus(klas) {

	if (klas == 'Freshman') {
		$(".halls").find("select option[value*= 'Freshman']").prop("disabled", true);
	} else if (klas == 'Sophomore') {
		$(".halls").find("select option[value*='Sophomore']").prop("disabled", true);
	} else if (klas == 'Junior') {
		$(".halls").find("select option[value*='Junior']").prop("disabled", true);
	} else if (klas == 'Senior') {
		$(".halls").find("select option[value*='Senior']").prop("disabled", true);
	}
}

$().ready(function() {

	disable();

	$('.status-tab3').find('input[type="checkbox"]').click(function() { 
		klass = $("label[for='" + this.id + "']").text();
		if (this.checked) {
			enableHallsBasedOnStatus(klass);		
		} else {
			disableHallsBasedOnDisabledStatus(klass);
			//disableHallsBasedOnStatus(klass);
		}
		//:not(:contains('Sophomore')):not(:contains('Junior')):not(:contains('Senior'))")
	});
});