/*global define*/
define([ 'handlebars' ], function(Handlebars) {
	'use strict';

	Handlebars.registerHelper('ifEqual', function(value1, value2, options) {
		if (value1 === value2) {
			return options.fn(this);
		}
		return options.inverse(this);
	});
});
