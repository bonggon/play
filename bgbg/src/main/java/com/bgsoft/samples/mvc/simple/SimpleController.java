package com.bgsoft.samples.mvc.simple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bgsoft.samples.aop.Customer;
import com.bgsoft.util.exception.CustomGenericException;

@Controller
public class SimpleController {
	
	@Autowired
    private Customer customer;

	@RequestMapping(value="/simple", produces = "application/json; charset=utf8")
	public @ResponseBody String simple() throws Exception {
		
		customer.addCustomer();
		
		return "Hello world! 한글";
	}
	
	@RequestMapping(value="/simple/exception", method=RequestMethod.GET, headers="Accept=text/plain")
	public @ResponseBody String simpleException() throws Exception {
		if(true)
			
			throw new CustomGenericException("E888", "한글 예외처리 메시지");
			
			return "Hello world!";
	}

}
