<div id="handlebars">
		<h2>Handlebars Example</h2>
		<p>
			See the <b>com.bgsoft.samples.mvc.simple.handlebars</b> package for the @Controller code
		</p>
		<ul>
			<li>
				<a id="simpleLink" class="writeJsonLinkWithHandlebars" href="<c:url value="/simple/handlebars" />">handlebars example</a>
			</li>
		</ul>
		
		<div id="postDiv">
		</div>
		
		<script id="entry-template" type="text/x-handlebars-template">
			<div class="entry">
				<h1>{{foo}}</h1>
				<div class="body">
					{{fruit}}
				</div>
			</div>
		</script>
		
		</div>