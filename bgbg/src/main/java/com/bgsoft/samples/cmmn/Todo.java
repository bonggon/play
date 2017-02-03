package com.bgsoft.samples.cmmn;

public class Todo {

    private final String id;
    private final String completed;
    private final String title;
    
    public Todo() {
    	this.completed = "";
    	this.title = "";
    	this.id = "";
    }

    public Todo(String id, String completed, String title) {
        this.completed = completed;
        this.title = title;
        this.id = id;
    }

    public String getCompleted() {
        return completed;
    }

    public String getTitle() {
        return title;
    }
    
    public String getId() {
    	return id;
    }
}
