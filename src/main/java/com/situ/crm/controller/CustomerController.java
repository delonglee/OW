package com.situ.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.crm.common.EasyUIDataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.pojo.Customer;
import com.situ.crm.service.ICustomerService;
import com.situ.crm.vo.CustomerContribute;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private ICustomerService customerService;
		
	@RequestMapping("/customerManager")
	@ResponseBody
	public EasyUIDataGrideResult customerManager(Integer page,Integer rows,Customer customer){
		return customerService.customerList(page, rows,customer);
	}
	
	@RequestMapping("/customerContribute")
	@ResponseBody
	public EasyUIDataGrideResult customerContribute(Integer page,Integer rows,CustomerContribute customerContribute){
		return customerService.findCustomerContribute(page, rows, customerContribute);
	}
	
	@RequestMapping("/findCustomerConstitute")
	@ResponseBody
	public ServerResponse findCustomerConstitute(){
		return customerService.findCustomerConstitute();
	}
	
	@RequestMapping("/findCustomerServiceBz")
	@ResponseBody
	public ServerResponse findCustomerServiceBz(){
		return customerService.findCustomerServiceBz();
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ServerResponse delete(String ids){
		return customerService.delete(ids);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public ServerResponse add(Customer customer){
		return customerService.add(customer);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ServerResponse update(Customer customer){
		return customerService.update(customer);
	}
	
	@RequestMapping("findById")
	@ResponseBody
	public ServerResponse findById(Integer id){
		return customerService.findById(id);
	}
	
	
	

}
