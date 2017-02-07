package com.bgsoft.samples.mvc.aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bgsoft.samples.aop.Customer;
import com.bgsoft.util.exception.CustomGenericException;

@Controller
public class AOPSimpleController {
	
	@Autowired
    private Customer customer;

	@RequestMapping(value="/play/with/aop", produces = "application/json; charset=utf8")
	public @ResponseBody String playWithAOP() throws Exception {
		
		customer.addCustomer();
		
		return "이클립스 콘솔 로그를 확인해 주세요.";
		
	}
	

}
