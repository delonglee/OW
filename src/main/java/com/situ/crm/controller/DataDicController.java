package com.situ.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.crm.common.EasyUIDataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.pojo.DataDic;
import com.situ.crm.service.IDataDicService;

@Controller
@RequestMapping("/dataDic")
public class DataDicController {
	
	@Autowired
	private IDataDicService dataDicService;
	
	
	@RequestMapping("/dataDicManager")
	@ResponseBody
	public EasyUIDataGrideResult dataDicManager(Integer page,Integer rows,DataDic dataDic){
		return dataDicService.dataDicList(page, rows,dataDic);
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ServerResponse delete(String ids){
		return dataDicService.delete(ids);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public ServerResponse add(DataDic dataDic){
		return dataDicService.add(dataDic);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ServerResponse update(DataDic dataDic){
		return dataDicService.update(dataDic);
	}
	
	@RequestMapping("/findDataDicName")
	@ResponseBody
	public List<DataDic> findDataDicName(){
		return dataDicService.findDataDicName();
	}
	@RequestMapping("/findLevel")
	@ResponseBody List<DataDic> findLevel(){
		return dataDicService.findLevel();
	}

}
