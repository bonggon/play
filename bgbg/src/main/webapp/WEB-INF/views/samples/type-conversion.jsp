<div id="convert">
		<h2>Type Conversion</h2>
		<p>
			See the <code>org.springframework.samples.mvc.convert</code> package for the @Controller code
		</p>
		<ul>
			<li>
				<a id="primitive" class="textLink" href="<c:url value="/convert/primitive?value=3" />">Primitive</a>
			</li>
			<li>
				<a id="date" class="textLink" href="<c:url value="/convert/date/2010-07-04" />">Date</a>
			</li>
			<li>
				<a id="collection" class="textLink" href="<c:url value="/convert/collection?values=1&values=2&values=3&values=4&values=5" />">Collection 1 (multi-value parameter)</a>
			</li>
			<li>
				<a id="collection2" class="textLink" href="<c:url value="/convert/collection?values=1,2,3,4,5" />">Collection 2 (single comma-delimited parameter value)</a>
			</li>
			<li>
				<a id="formattedCollection" class="textLink" href="<c:url value="/convert/formattedCollection?values=2010-07-04,2011-07-04" />">@Formatted Collection</a>
			</li>		
			<li>
				<a id="valueObject" class="textLink" href="<c:url value="/convert/value?value=123456789" />">Custom Value Object</a>
			</li>
			<li>
				<a id="customConverter" class="textLink" href="<c:url value="/convert/custom?value=123-45-6789" />">Custom Converter</a>
			</li>		
		</ul>
		<div id="convert-bean">
			<h3>JavaBean Property Binding</h3>
			<ul>
				<li>
					<a id="primitiveProp" class="textLink" href="<c:url value="/convert/bean?primitive=3" />">Primitive</a>
				</li>	
				<li>
					<a id="dateProp" class="textLink" href="<c:url value="/convert/bean?date=2010-07-04" />">Date</a>
				</li>	
				<li>
					<a id="maskedProp" class="textLink" href="<c:url value="/convert/bean?masked=(205) 333-3333" />">Masked</a>
				</li>	
				<li>
					<a id="listProp" class="textLink" href="<c:url value="/convert/bean?list[0]=1&list[1]=2&list[2]=3" />">List Elements</a>
				</li>
				<li>
					<a id="formattedListProp" class="textLink" href="<c:url value="/convert/bean?formattedList[0]=2010-07-04&formattedList[1]=2011-07-04" />">@Formatted List Elements</a>
				</li>
				<li>
					<a id="mapProp" class="textLink" href="<c:url value="/convert/bean?map[0]=apple&map[1]=pear" />">Map Elements</a>
				</li>
				<li>
					<a id="nestedProp" class="textLink" href="<c:url value="/convert/bean?nested.foo=bar&nested.list[0].foo=baz&nested.map[key].list[0].foo=bip" />">Nested</a>
				</li>
			</ul>
		</div>
	</div>