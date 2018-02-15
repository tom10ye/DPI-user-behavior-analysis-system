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
	 * Mapע���@Param����ͬʱʹ�ð���������3Сʱ��BUG�Ĳ�ʹ�ܽᡣ
	 */
	List<ClickPojo> findByMultiParamsPages(Map<String,Object> conditions);
	List<ClickPojo> findAll();
	
    List<ClickPojo> findByPage(int startrow,int pageSize);
    
	
}
