package com.softline.webService.impl;

import javax.jws.WebService;

import com.softline.webService.IHelloService;
@WebService
public class HelloService implements IHelloService{

	@Override
	public String getHello() {
		return "hello webService";
	}

}
