define([
	'marionette'
	, 'js/Layout'
	], function (Mn, Layout) {
	'use strict';

	var TodoApp = Mn.Application.extend({
		setRootLayout: function () {
			this.root = new Layout.RootLayout();
		}
	});

	var TodoMVC = TodoMVC || {};
	
	TodoMVC.App = new TodoApp();

	TodoMVC.App.on('before:start', function () {
		TodoMVC.App.setRootLayout();
	});
	
	return TodoMVC;

});