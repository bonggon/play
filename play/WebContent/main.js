/*global require*/
'use strict';

// Require.js allows us to configure shortcut alias
requirejs.config({
    // The shim config allows us to configure dependencies for
    // scripts that do not call define() to register a module
    shim: {
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: [
                'underscore',
                'jquery'
            ],
            exports: 'Backbone'
        }
    },
    paths: {
        jquery: 'bower_components/jquery/dist/jquery',
        underscore: 'bower_components/underscore/underscore',
        backbone: 'bower_components/backbone/backbone'

    }
});

requirejs([
    'backbone',
    'views/app',
    'views/test'
], function(Backbone, TodoView, TestView) {
    // Initialize the application view
    var todoView = new TodoView();

    // console.log(todoView.el);


});
