define([
	'marionette',
	'js/FilterState',
	'handlebars', 
	'helpers',
	'text!templates/stats.html',
	], function (Mn, filterChannel, Handlebars, Helpers, statsTemplate) {
	'use strict';

	var RootLayout = Mn.View.extend({

		el: '#todoapp',

		regions: {
			header: '#header',
			main: '#main',
			footer: '#footer'
		}
	});

	// Layout Header View
	// ------------------
	var HeaderLayout = Mn.View.extend({

		template: '#template-header',

		// UI bindings create cached attributes that
		// point to jQuery selected objects
		ui: {
			input: '#new-todo'
		},

		events: {
			'keypress @ui.input': 'onInputKeypress',
			'keyup @ui.input': 'onInputKeyup'
		},

		// According to the spec
		// If escape is pressed during the edit, the edit state should be left and any changes be discarded.
		onInputKeyup: function (e) {
			var ESC_KEY = 27;

			if (e.which === ESC_KEY) {
				this.render();
			}
		},

		onInputKeypress: function (e) {
			var ENTER_KEY = 13;
			var todoText = this.ui.input.val().trim();

			if (e.which === ENTER_KEY && todoText) {
				this.collection.create({
					title: todoText
				});
				
				this.ui.input.val('');
			}
		}
	});

	// Layout Footer View
	// ------------------
	var FooterLayout = Mn.View.extend({
		template: Handlebars.compile(statsTemplate),

		// UI bindings create cached attributes that
		// point to jQuery selected objects
		ui: {
			filters: '#filters a',
			completed: 'li .completed',
			active: 'li .active ',
			all: 'li .all ',
			summary: '#todo-count',
			clear: '#clear-completed'
		},

		events: {
			'click @ui.clear': 'onClearClick'
		},

		collectionEvents: {
			all: 'render'
		},

		templateContext: {
			activeCountLabel: function () {
				return (this.activeCount === 1 ? 'item' : 'items') + ' left';
			}
		},

		initialize: function () {
			this.listenTo(filterChannel.request('filterState'), 'change:filter', this.updateFilterSelection, this);
		},

		serializeData: function () {
			var active = this.collection.getActive().length;
			var total = this.collection.length;

			return {
				activeCount: active,
				totalCount: total,
				completedCount: total - active
			};
		},

		onRender: function () {
			// todo 목록이 없으면 footer 섹션을 숨긴다.
			this.$el.parent().toggle(this.collection.length > 0);
			this.updateFilterSelection();
		},

		updateFilterSelection: function () {
			this.ui.filters.removeClass('selected');
			var filter = filterChannel.request('filterState').get('filter');
			this.ui[filter].addClass('selected');
		},

		onClearClick: function () {
			var completed = this.collection.getCompleted();
			completed.forEach(function (todo) {
				todo.destroy();
			});
		}
	});
	
	return {RootLayout, HeaderLayout, FooterLayout};
});