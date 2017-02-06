/*global require*/
'use strict';

// Require.js allows us to configure shortcut alias
require.config({
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
	
require([ 'marionette', 'js/Application', 'js/Router' 
	], function(Mn, TodoMVC, Router) {
	
	const loadInitialData = function() {
	  return Promise.resolve();
	};
	
	TodoMVC.App.on('start', function () {
		var controller = new Router.Controller();
		var router = new Router.Router({
			controller: controller
		});

		controller.start();
		Backbone.history.start();
	});

	loadInitialData().then(() => TodoMVC.App.start());
});