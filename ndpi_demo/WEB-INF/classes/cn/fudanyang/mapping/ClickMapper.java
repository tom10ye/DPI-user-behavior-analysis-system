package cn.fudanyang.mapping;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.fudanyang.pojo.ClickPojo;
import jdk.internal.org.objectweb.asm.tree.analysis.SourceInterpreter;



public interface ClickMapper {
	   
	ClickPojo findById(int id);
	List<ClickPojo> findBySrcIP(@Param("sourceIP")String sourceIP);
	List<ClickPojo> findByTitle(@Param("title")String title);
	
	/*
	 * Map注入和@Param不可同时使用啊啊啊啊，3小时找BUG的惨痛总结。
	 */
	List<ClickPojo> findByMultiParamsPages(Map<String,Object> conditions);
	List<ClickPojo> findAll();
	
    List<ClickPojo> findByPage(int startrow,int pageSize);
    
	
}
