window.addEventListener('message', function(event) {
	const {action, data} = event.data;
	if (action == 'show') {
		$("body").fadeOut(500);
		$("#title").text(data.title);
		$(".description").text(data.description);
		$("body").fadeIn(500);
	} else if (action == 'hide') {
		$("body").fadeOut(500);
	}
})
