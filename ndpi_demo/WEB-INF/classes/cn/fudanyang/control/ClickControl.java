package cn.fudanyang.control;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.webkit.ContextMenu.ShowContext;

import cn.fudanyang.pojo.ClickPojo;
import cn.fudanyang.service.ClickService;

@Controller
public class ClickControl {
     
	@Autowired
	private ClickService clickService;
	  
	@Value("#{configProperties['everyPageSize']}")
	private String everyPageSize;
	
	private HttpSession session=null;
    
	@RequestMapping("/look")
	public ModelAndView lookPage(String page,Model model){
    	
    	
    	List<ClickPojo> all=  clickService.findAll();
        int totalCount=all.size();
        int pageSize=Integer.parseInt(everyPageSize);
        int pageTimes;
        if (totalCount%pageSize==0){
        	pageTimes=totalCount/pageSize;
        }else{
        	pageTimes=totalCount/pageSize+1;
        }
        model.addAttribute("totalCount",totalCount);
        model.addAttribute("pageSize",pageSize);
        model.addAttribute("pageTimes",pageTimes);
        if(page==null){
        	page="1";
        }
        model.addAttribute("currentPage",Integer.parseInt(page));
        int startrow=(Integer.parseInt(page)-1)*pageSize;
        
        List<ClickPojo> pageClicks=clickService.findByPage(startrow,pageSize);
        model.addAttribute("click",pageClicks);
		return new ModelAndView("look");
	}
    
    private void showResult(int index){
    	
    }
    @RequestMapping("/lookByConditions")
    public ModelAndView lookByConditions(String page,Model model,HttpServletRequest request)
                     throws UnsupportedEncodingException
    {   
    	List<ClickPojo> all= 
    	    clickService.findByConditions(request,0,clickService.findAll().size());//最大不可能超过全部的数量
        int totalCount=all.size();
   
        int pageSize=Integer.parseInt(everyPageSize);
        int pageTimes;
        if (totalCount%pageSize==0){
        	pageTimes=totalCount/pageSize;
        }else{ 
        	pageTimes=totalCount/pageSize+1;
        }
        model.addAttribute("totalCount",totalCount);
        model.addAttribute("pageSize",pageSize);
        model.addAttribute("pageTimes",pageTimes);
        
        if(page==null){
        	page="1";
        }
        model.addAttribute("currentPage",Integer.parseInt(page));
        int startrow=(Integer.parseInt(page)-1)*pageSize;
        
        List<ClickPojo> pageClicks=clickService.findByConditions(request,startrow,pageSize);
        model.addAttribute("click",pageClicks);
		return new ModelAndView("look");
		
    } 
	
}
