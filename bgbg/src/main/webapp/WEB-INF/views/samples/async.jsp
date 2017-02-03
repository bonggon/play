<div id="async">
		<h2>Async Requests</h2>
		<p>
			<em>Note: Links may take 2-3 seconds to complete.</em>
		</p>
		<p>
		  See the <code>org.springframework.samples.mvc.async</code> package for the @Controller code.
		</p>
		<ul>
		<li>
			<a id="callableResponseBodyLink" class="textLink"
				href="<c:url value="/async/callable/response-body" />">GET /async/callable/response-body</a>
		</li>
		<li>
			<a id="callableViewLink" class="textLink"
				href="<c:url value="/async/callable/view" />">GET /async/callable/view</a>
		</li>
		<li>
			<a id="callableExceptionLink" class="textLink"
				href="<c:url value="/async/callable/exception" />">GET /async/callable/exception</a>
		</li>
		<li>
			<a id="callableUnhandledExceptionLink" class="textLink"
				href="<c:url value="/async/callable/exception?handled=false" />">GET /async/callable/exception?handled=false</a>
				(500 Error expected)
		</li>
		<li>
			<a id="callableCustomTimeoutLink" class="textLink"
				href="<c:url value="/async/callable/custom-timeout-handling" />">GET /async/callable/custom-timeout-handling</a>
		</li>
		<li>
			<a id="deferredResultSuccessLink" class="textLink"
				href="<c:url value="/async/deferred-result/response-body" />">GET /async/deferred-result/response-body</a>
		</li>
		<li>
			<a id="deferredResultModelAndViewLink" class="textLink"
				href="<c:url value="/async/deferred-result/model-and-view" />">GET /async/deferred-result/model-and-view</a>
		</li>
		<li>
			<a id="deferredResultErrorLink" class="textLink"
				href="<c:url value="/async/deferred-result/exception" />">GET /async/deferred-result/exception</a>
		</li>
		<li>
			<a id="deferredResultTimeoutValueLink" class="textLink"
				href="<c:url value="/async/deferred-result/timeout-value" />">GET /async/deferred-result/timeout-value</a>
		</li>
		</ul>
	</div>