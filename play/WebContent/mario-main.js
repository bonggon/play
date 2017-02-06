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
	
require([ 'marionette', 'js/Application', 'js/Router' ], function(
		 Mn, TodoMVC, Router) {
	
	const loadInitialData = function() {
	  return Promise.resolve();
	};
	
	// After we initialize the app, we want to kick off the router
	// and controller, which will handle initializing our Views
	TodoMVC.App.on('start', function () {
		var controller = new Router.Controller();
		controller.router = new Router.Router({
			controller: controller
		});

		controller.start();
		Backbone.history.start();
	});

	// Load some initial data, and then start our application
	loadInitialData().then(() => TodoMVC.App.start());
});