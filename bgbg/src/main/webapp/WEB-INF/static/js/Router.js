define([
	'marionette',
	'js/FilterState',
	'js/Application',
	'js/Layout',
	'js/Views',
	'js/Todos'
	], function (Mn, filterChannel, TodoMVC, Layout, Views, Todos) {
	'use strict';

	// TodoList Router
	// ---------------
	//
	// Handles a single dynamic route to show
	// the active vs complete todo items
	var Router = Mn.AppRouter.extend({
		appRoutes: {
			'*whateverIsComming': 'filterItems'
		}
	});

	// TodoList Controller (Mediator)
	// ------------------------------
	//
	// Control the workflow and logic that exists at the application
	// level, above the implementation detail of views and models
	var Controller = Mn.Object.extend({

		initialize: function () {
			this.todoList = new Todos.TodoList();
		},

		// Start the app by showing the appropriate views
		// and fetching the list of todo items, if there are any
		start: function () {
			this.showHeader(this.todoList);
			this.showFooter(this.todoList);
			this.showTodoList(this.todoList);
			this.todoList.on('all', this.updateHiddenElements, this);
			this.todoList.fetch();
		},

		updateHiddenElements: function () {
			$('#main, #footer').toggle(!!this.todoList.length);
		},

		showHeader: function (todoList) {
			var header = new Layout.HeaderLayout({
				collection: todoList
			});
			TodoMVC.App.root.showChildView('header', header);
		},

		showFooter: function (todoList) {
			var footer = new Layout.FooterLayout({
				collection: todoList
			});
			TodoMVC.App.root.showChildView('footer', footer);
		},

		showTodoList: function (todoList) {
			TodoMVC.App.root.showChildView('main', new Views.ListView({
				collection: todoList
			}));
		},

		// Set the filter to show complete or all items
		filterItems: function (filter) {
			var newFilter = filter && filter.trim() || 'all';
			filterChannel.request('filterState').set('filter', newFilter);
		}
	});
	
	return {Router, Controller};
});