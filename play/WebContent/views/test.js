/*global define*/
define([
    'jquery',
    'underscore',
    'backbone',
    'models/todo'
], function($, _, Backbone, Todo) {
    'use strict';

    var TestView = Backbone.View.extend({
        events: {
            click: function(e) {
                console.log(testView.el === e.target);
                console.log(e.target);

            }
        },

    });

    var button1 = $("<button id='1'></button");
    var button2 = $("<button id='2'></button");

    var testView = new TestView({el: button1});

    testView.setElement(button2);

    button1.trigger("click");
    button2.trigger("click");

    return TestView;


});
