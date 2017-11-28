$(function() {
	//Solving the active menu problem
	switch(menu) {
	
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
		
	default:
		$('#home').addClass('active');
	    break;
	}
});