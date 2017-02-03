<div id="backbonejs"></div>
<a id="backboneLink" href="#backbone">BackboneJs</a>

<script type="text/javascript">
	var link = $("#backbonejs");

	$.ajax({
		url : "/bgbg/backbone",
		dataType : "text",
		beforeSend : function(req) {
			req.setRequestHeader("Accept", "text/plain;charset=UTF-8");
		},
		success : function(text) {
			MvcUtil.showBackboneSuccessResponse(text, link);
		},
		error : function(xhr) {
			MvcUtil.showErrorResponse(xhr.responseText, link);
		}
	});
</script>