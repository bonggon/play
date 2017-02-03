/*global define*/
define([
    'jquery',
    'underscore',
    'backbone',
    'models/todo'
], function($, _, Backbone, Todo) {
    'use strict';

    // Our overall **AppView** is the top-level piece of UI.
    var TodoView = Backbone.View.extend({
        tagName: "li",

        todoTpl: _.template("An example template"),

				initialize: function(){

				},

        events: {
            "dblclick label": "edit",
            "keypress .edit": "updateOnEnter",
            "blur .edit":"close"
        },

        render: function() {
            this.$el.html(this.todoTpl(this.model.toJSON()));
            this.input = this.$(".edit");
            return this;
        },

        edit: function() {

        },

        close: function() {

        },

        updateOnEnter: function(e) {

        }


    });

    return TodoView;


});
