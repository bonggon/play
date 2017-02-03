package com.bgsoft.samples.aop.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoggingAspect {

	@Before("execution(* com.bgsoft.samples.aop.Customer.addCustomer(..))")
	public void logBefore(JoinPoint joinPoint) {

		System.out.println("logBefore() is running!");
		System.out.println("customer is hijacked : " + joinPoint.getSignature().getName());
		System.out.println("************************************************");
	}
	
	@After("execution(* com.bgsoft.samples.aop.Customer.addCustomer(..))")
	public void logAfter(JoinPoint joinPoint) {

		System.out.println("logAfter() is running!!!!!");
		System.out.println("customer is hijacked : " + joinPoint.getSignature().getName());
		System.out.println("************************************************");

	}

}