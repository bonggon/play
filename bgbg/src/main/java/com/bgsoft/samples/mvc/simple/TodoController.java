package com.bgsoft.samples.mvc.simple;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bgsoft.samples.cmmn.Todo;

@RestController
public class TodoController {
	
	private final AtomicLong counter = new AtomicLong();

    @RequestMapping(value="/simple/todos", method=RequestMethod.GET)
    public List<?> getTodos() {
    	List<Todo> l1 = new ArrayList<Todo>();
        l1.add(new Todo(getUUID(), true, "출근하기"));
        l1.add(new Todo(getUUID(), true, "일하기"));
        l1.add(new Todo(getUUID(), false, "퇴근하기"));
        return l1;
    }
    
    @RequestMapping(value="/simple/todos", method=RequestMethod.POST)
    public Todo createTodos(@RequestBody Todo item) {
    	Todo todo = new Todo(getUUID(), false, item.getTitle());
    	return todo;
    }
    
    @RequestMapping(value="/simple/todos/{id}", method=RequestMethod.GET)
    public Todo getTodo(@PathVariable String id) {
        return new Todo("1", false, "abc");
    }
    
    @RequestMapping(value="/simple/todos/{id}", method=RequestMethod.PUT)
    public List<?> putTodo(@PathVariable String id, @RequestBody Todo item) {
    	List<Todo> l1 = new ArrayList<Todo>();
    	Todo todo = item;
    	l1.add(todo);
        return l1;
    }
    
    @RequestMapping(value="/simple/todos/{id}", method=RequestMethod.DELETE)
    public List<?> deleteTodo(@PathVariable String id) {
    	List<Todo> l1 = new ArrayList<Todo>();
        return l1;
    }
    
    private String getUUID() {
    	return Long.toString(counter.incrementAndGet());
    }

}