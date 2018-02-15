package cn.fudanyang.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.fudanyang.mapping.ClickMapper;
import cn.fudanyang.pojo.ClickPojo;

@Service
@Transactional
public  class ClickServiceImpl implements ClickService {
    
    @Resource
	private ClickMapper clickMapper;
	
	@Override
	public ClickPojo findById(int id) {
	   
		return clickMapper.findById(id);
		
	}

	@Override
	public List<ClickPojo> findBySrcIP(String srcIP) {
	
		return clickMapper.findBySrcIP(srcIP);
	}
	@Override
	public List<ClickPojo> findByTitle(String title) {
		
		return clickMapper.findByTitle(title);
	}
	@Override
	public List<ClickPojo> findAll() {
	
		return clickMapper.findAll();
	}



	@Override
	public List<ClickPojo> findByConditions(HttpServletRequest request, int startrow, int pageSize) {
		
		   int i=0;
           Map<String, String[]>map=request.getParameterMap();
           Map<String, Object>newmap=new HashMap<String,Object>();
           for(String key:map.keySet()){
        	   newmap.put(key,map.get(key)[0]);
        	   if(null==map.get(key)[0].trim()){
        		   i++;
        	   } 
        	  
           }
           if(i!=map.size()){//ШЋПе
        	   for(String key:map.keySet()){
        		   request.getSession().setAttribute(key, map.get(key)[0]);
        	   }
           }
           newmap.put("startrow", startrow);
           newmap.put("pageSize", pageSize);
           System.out.println(newmap);
           
           return  clickMapper.findByMultiParamsPages(newmap);
            
	}
	
	@Override
	public List<ClickPojo> findByPage(int startrow, int pageSize) {

		return clickMapper.findByPage(startrow, pageSize);
	}





}
