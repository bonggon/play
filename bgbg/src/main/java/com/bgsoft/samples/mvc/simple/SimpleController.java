package com.bgsoft.samples.mvc.simple;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bgsoft.util.exception.CustomGenericException;

@Controller
public class SimpleController {

	@RequestMapping("/simple")
	public @ResponseBody String simple() throws Exception {
		
		return "Hello world!";
	}
	
	@RequestMapping(value="/simple/exception", method=RequestMethod.GET, headers="Accept=text/plain")
	public @ResponseBody String simpleException() throws Exception {
		if(true)
			
			throw new CustomGenericException("E888", "한글 예외처리 메시지");
			
			return "Hello world!";
	}

}
