<div id="data">
		<h2>Request Data</h2>
		<p>
			See the <code>org.springframework.samples.mvc.data</code> package for the @Controller code
		</p>
		<ul>
			<li>
				<a id="param" class="textLink" href="<c:url value="/data/param?foo=bar" />">Query parameter</a>
			</li>
			<li>
				<a id="group" class="textLink" href="<c:url value="/data/group?param1=foo&param2=bar&param3=baz" />">Group of query parameters</a>
			</li>
			<li>
				<a id="var" class="textLink" href="<c:url value="/data/path/foo" />">Path variable</a>
			</li>
			<li>
				<a id="matrixVar" class="textLink" href="<c:url value="/data/matrixvars;foo=bar/simple" />">Matrix variable</a>
			</li>
			<li>
				<a id="matrixVarMultiple" class="textLink" href="<c:url value="/data/matrixvars;foo=bar1/multiple;foo=bar2" />">Matrix variables (multiple)</a>
			</li>
			<li>
				<a id="header" class="textLink" href="<c:url value="/data/header" />">Header</a>
			</li>
			<li>
				<form id="requestBody" class="textForm" action="<c:url value="/data/body" />" method="post">
					<input id="requestBodySubmit" type="submit" value="Request Body" />
				</form>
			</li>				
			<li>
				<form id="requestBodyAndHeaders" class="textForm" action="<c:url value="/data/entity" />" method="post">
					<input id="requestBodyAndHeadersSubmit" type="submit" value="Request Body and Headers" />
				</form>
			</li>
		</ul>	
		<div id="standardArgs">
			<h3>Standard Resolvable Web Arguments</h3>
			<ul>
				<li>
					<a id="request" class="textLink" href="<c:url value="/data/standard/request" />">Request arguments</a>				
				</li>
				<li>
					<form id="requestReader" class="textForm" action="<c:url value="/data/standard/request/reader" />" method="post">
						<input id="requestReaderSubmit" type="submit" value="Request Reader" />
					</form>
				</li>			
				<li>
					<form id="requestIs" class="textForm" action="<c:url value="/data/standard/request/is" />" method="post">
						<input id="requestIsSubmit" type="submit" value="Request InputStream" />
					</form>
				</li>
				<li>
					<a id="response" class="textLink" href="<c:url value="/data/standard/response" />">Response arguments</a>				
				</li>			
				<li>
					<a id="writer" class="textLink" href="<c:url value="/data/standard/response/writer" />">Response Writer</a>
				</li>
				<li>
					<a id="os" class="textLink" href="<c:url value="/data/standard/response/os" />">Response OutputStream</a>				
				</li>
				<li>
					<a id="session" class="textLink" href="<c:url value="/data/standard/session" />">Session</a>			
				</li>			
			</ul>
		</div>
		<div id="customArgs">
			<h3>Custom Resolvable Web Arguments</h3>	
			<ul>
				<li>
					<a id="customArg" class="textLink" href="<c:url value="/data/custom" />">Custom</a>			
				</li>
			</ul>
		</div>
	</div>