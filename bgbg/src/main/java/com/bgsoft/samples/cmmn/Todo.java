package com.bgsoft.samples.cmmn;

public class Todo {

    private final String id;
    private final boolean completed;
    private final String title;
    
    public Todo() {
    	this.completed = false;
    	this.title = "";
    	this.id = "";
    }

    public Todo(String id, boolean completed, String title) {
        this.completed = completed;
        this.title = title;
        this.id = id;
    }

    public boolean getCompleted() {
        return completed;
    }

    public String getTitle() {
        return title;
    }
    
    public String getId() {
    	return id;
    }
}
