/*global require*/
'use strict';

// Require.js allows us to configure shortcut alias
require.config({
	// The shim config allows us to configure dependencies for
	// scripts that do not call define() to register a module
	shim : {
		underscore : {
			exports : '_'
		},
		backbone : {
			deps : [ 'underscore', 'jquery' ],
			exports : 'Backbone'
		},
		radio: {
			deps: ['underscore', 'backbone'],
			exports : 'Radio'
		},
		marionette: {
			deps: ['underscore', 'backbone', 'radio'],
			exports: 'Mn'
		}
		
	},
	paths : {
		jquery : 'bower_components/jquery/dist/jquery',
		underscore : 'bower_components/underscore/underscore',
		backbone : 'bower_components/backbone/backbone',
		radio : 'bower_components/radio/build/backbone.radio',
		marionette : 'bower_components/marionette/lib/backbone.marionette',
		storage : 'bower_components/backbone.localStorage',
		text : 'bower_components/text',
		handlebars : 'bower_components/handlebars/handlebars',
		helpers : 'bower_components/handlebars/helpers'
	}
});
	
require([ 'marionette', 'views/app', 'routers/router' ], function(
		 Mn, myView, Workspace) {
	
	const loadInitialData = function() {
	  return Promise.resolve();
	};
	
	// Create our app
	var app = new Mn.Application({region: '#info'
	});

	app.on('start', function() { 
		new Workspace();
		Backbone.history.start();
		
		var appView = new myView.AppView();
		
		var testView = new myView.TestView();
		myView.region.show(testView);	
		
		testView.showChildView('helloRegion', new myView.SubView());
		
		console.log(app.getRegion());
		
		app.getRegion().show(testView);
	});

	// Load some initial data, and then start our application
	loadInitialData().then(() => app.start());
});