/*global Backbone, TodoMVC:true */

define([
	'backbone',
	'storage'
	], function (Backbone, Store) {
	'use strict';

	// Todo Model
	// ----------
	var Todo = Backbone.Model.extend({
		defaults: {
			title: '',
			completed: false,
			created: 0
		},

		initialize: function () {
			if (this.isNew()) {
				this.set('created', Date.now());
			}
		},

		toggle: function () {
			return this.set('completed', !this.isCompleted());
		},

		isCompleted: function () {
			return this.get('completed');
		},

		matchesFilter: function (filter) {
			if (filter === 'all') {
				return true;
			}

			if (filter === 'active') {
				return !this.isCompleted();
			}

			return this.isCompleted();
		}
	});

	// Todo Collection
	// ---------------
	var TodoList = Backbone.Collection.extend({
		model: Todo,
		url: '/bgbg/simple/todos',
		//localStorage: new Store('todos-backbone-marionette'),

		comparator: 'created',

		getCompleted: function () {
			return this.filter(this._isCompleted);
		},

		getActive: function () {
			return this.reject(this._isCompleted);
		},

		_isCompleted: function (todo) {
			return todo.isCompleted();
		}
	});
	
	return {Todo, TodoList};
});