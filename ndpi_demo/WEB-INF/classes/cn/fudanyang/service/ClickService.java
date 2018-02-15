package cn.fudanyang.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;

import cn.fudanyang.pojo.ClickPojo;

public interface ClickService {
	
	ClickPojo findById(int id);
	List<ClickPojo> findBySrcIP(String srcIP);
	List<ClickPojo> findByTitle(String title);
	List<ClickPojo> findAll();
	
	List<ClickPojo> findByConditions(HttpServletRequest request,int startrow,int pageSize);
	
	List<ClickPojo> findByPage(int startrow,int pageSize);
}
