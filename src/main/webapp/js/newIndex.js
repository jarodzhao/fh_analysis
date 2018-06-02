$(function() {
	$('#sublime').click(
			function() {
				var state = getApplyUserIdAndUnSignState();
				console.info(state);

				$.ajax({
					type: 'POST',
					data: { unState: state },
					url: 'http://localhost:8080/getJsonParams',
					success: function(result){
						console.info(result);
					},
					error: function(request, status, thrown){
						console.info('error: ' + status);
					}
				})

			})
})

getApplyUserIdAndUnSignState = function() {
	var $sign_state = $('#theForm>#sign_state');
	var unSignState = [];
	$sign_state.each(function(i, n) {
		unSignState.push({
			applyUserId : $(this).attr('applyUserId'),
			state : $(this).val()
		});
	});
//	return unSignState;
	return JSON.stringify(unSignState, null, 4);
}