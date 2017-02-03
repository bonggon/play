package com.bgsoft.samples.mvc.simple.handlebars;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bgsoft.samples.mvc.mapping.JavaBean;

@Controller
public class SimpleHandlebarsController {
	
	@RequestMapping(value="/simple/handlebars", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody JavaBean byProducesJson() {
		return new JavaBean();
	}
	

}
