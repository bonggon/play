<div id="mapping">
		<h2>Request Mapping</h2>
		<p>
			See the <code>org.springframework.samples.mvc.mapping</code> package for the @Controller code
		</p>
		<ul>
			<li>
				<a id="byPath" class="textLink" href="<c:url value="/mapping/path" />">By path</a>
			</li>
			<li>
				<a id="byPathPattern" class="textLink" href="<c:url value="/mapping/path/wildcard" />">By path pattern</a>
			</li>
			<li>
				<a id="byMethod" class="textLink" href="<c:url value="/mapping/method" />">By path and method</a>
			</li>
			<li>
				<a id="byMethod2" class="textLink" href="<c:url value="/mapping/method" />">By path and method</a>
			</li>
			<li>
				<a id="byParameter" class="textLink" href="<c:url value="/mapping/parameter?foo=bar" />">By path, method, and presence of parameter</a>
			</li>
			<li>
				<a id="byNotParameter" class="textLink" href="<c:url value="/mapping/parameter" />">By path, method, and not presence of parameter</a>
			</li>
			<li>
				<a id="byHeader" class="textLink" href="<c:url value="/mapping/header" />">By presence of header</a>
			</li>
			<li>
				<a id="byHeaderNegation" class="textLink" href="<c:url value="/mapping/header" />">By absence of header</a>
			</li>
			<li>
				<form id="byConsumes" class="readJsonForm" action="<c:url value="/mapping/consumes" />" method="post">
					<input id="byConsumesSubmit" type="submit" value="By consumes" />
				</form>
			</li>
			<li>
				<a id="byProducesAcceptJson" class="writeJsonLink" href="<c:url value="/mapping/produces" />">By produces via Accept=application/json</a>
			</li>
            <li>
                <a id="byProducesAcceptXml" class="writeXmlLink" href="<c:url value="/mapping/produces" />">By produces via Accept=appilcation/xml</a>
            </li>
            <li>
              <a id="byProducesJsonExt" class="writeJsonLink" href="<c:url value="/mapping/produces.json" />">By produces via ".json"</a>
            </li>
            <li>
                <a id="byProducesXmlExt" class="writeXmlLink" href="<c:url value="/mapping/produces.xml" />">By produces via ".xml"</a>
            </li>
		</ul>
	</div>