<div id="messageconverters">
		<h2>Http Message Converters</h2>
		<p>
			See the <code>org.springframework.samples.mvc.messageconverters</code> package for the @Controller code
		</p>	
		<div id="stringMessageConverter">
			<h3>StringHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readString" class="textForm" action="<c:url value="/messageconverters/string" />" method="post">
						<input id="readStringSubmit" type="submit" value="Read a String" />
					</form>
				</li>
				<li>
					<a id="writeString" class="textLink" href="<c:url value="/messageconverters/string" />">Write a String</a>
				</li>
			</ul>
			<h3>FormHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readForm" action="<c:url value="/messageconverters/form" />" method="post">
						<input id="readFormSubmit" type="submit" value="Read Form Data" />		
					</form>
				</li>
				<li>
					<a id="writeForm" href="<c:url value="/messageconverters/form" />">Write Form Data</a>
				</li>
			</ul>
			<h3>Jaxb2RootElementHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readXml" class="readXmlForm" action="<c:url value="/messageconverters/xml" />" method="post">
						<input id="readXmlSubmit" type="submit" value="Read XML" />		
					</form>
				</li>
				<li>
					<a id="writeXmlAccept" class="writeXmlLink" href="<c:url value="/messageconverters/xml" />">Write XML via Accept=application/xml</a>
				</li>
                <li>
                    <a id="writeXmlExt" class="writeXmlLink" href="<c:url value="/messageconverters/xml.xml" />">Write XML via ".xml"</a>
                </li>
			</ul>
			<h3>MappingJacksonHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readJson" class="readJsonForm" action="<c:url value="/messageconverters/json" />" method="post">
						<input id="readJsonSubmit" type="submit" value="Read JSON" />	
					</form>
				</li>
				<li>
					<form id="readJsonInvalid" class="readJsonForm invalid" action="<c:url value="/messageconverters/json" />" method="post">
						<input id="readInvalidJsonSubmit" type="submit" value="Read invalid JSON (400 response code)" />	
					</form>
				</li>
				<li>
					<a id="writeJsonAccept" class="writeJsonLink" href="<c:url value="/messageconverters/json" />">Write JSON via Accept=application/json</a>
				</li>
                <li>
                    <a id="writeJsonExt" class="writeJsonLink" href="<c:url value="/messageconverters/json.json" />">Write JSON via ".json"</a>
                </li>
			</ul>
			<h3>AtomFeedHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readAtom" action="<c:url value="/messageconverters/atom" />" method="post">
						<input id="readAtomSubmit" type="submit" value="Read Atom" />		
					</form>
				</li>
				<li>
					<a id="writeAtom" href="<c:url value="/messageconverters/atom" />">Write Atom</a>
				</li>
			</ul>
			<h3>RssChannelHttpMessageConverter</h3>
			<ul>
				<li>
					<form id="readRss" action="<c:url value="/messageconverters/rss" />" method="post">
						<input id="readRssSubmit" type="submit" value="Read Rss" />	
					</form>
				</li>
				<li>
					<a id="writeRss" href="<c:url value="/messageconverters/rss" />">Write Rss</a>
				</li>
			</ul>		
		</div>
	</div>