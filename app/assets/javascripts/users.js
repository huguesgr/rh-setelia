//= require rails-timeago
//= require locales/jquery.timeago.fr.js

$(document).ready(function(){
	$('button#check_all').on("click", function(){
		if($('input[name="user[area_ids][]"]').is(':checked')) {
			$('input[name="user[area_ids][]"]').prop('checked', false);
		}
		else {
			$('input[name="user[area_ids][]"]').prop('checked', true);
		};
	});
});
