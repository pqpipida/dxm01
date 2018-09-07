//package com.dxm.edu.controller;
//
//import java.io.UnsupportedEncodingException;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Scope;
//import org.springframework.stereotype.Controller;
//
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.view.RedirectView;
//
//
//import com.dxm.edu.entity.NoticeEntity;
//import com.dxm.edu.entity.Page;
//import com.dxm.edu.service.NoticeService;
//
//
//@Controller("notice")
//@Scope("prototype")
//public class NoticeController
//{
//
//	@Autowired
//	
//	
//	private NoticeService noticeService;
//	
// 
//      
//	    @RequestMapping("init.do")
//	    public ModelAndView getNoticesList(Page page1,ModelAndView mv,HttpSession session,HttpServletRequest request) throws UnsupportedEncodingException {
//
//	        //组装page对象,传入方法中查询列表 回显数据
//	        Page p =page1;
//	        int pageSize1=4; //设置每页大小
//	        p.setPageSize(pageSize1);
//	        int curPage1=p.getCurrentPage();
//	        
//	        if (curPage1==0) {
//	            curPage1=1;
//	            p.setCurrentPage(curPage1);
//	        }
//	        int startRow1 =page1.getStartRow();
//	        
//	        if (!(p.getCurrentPage()==0)) {
//	             startRow1 = getStartRowBycurrentPage(curPage1, pageSize1);
//	        }
//	        
//	        p.setStartRow(startRow1);
//	        
//	        
//	        String titleCondition=null;
//	        if (page1.getTitleCondition()!=null) {
//	        	titleCondition = page1.getTitleCondition();//查询条件
//
//	        }
//
//
//	        List<NoticeEntity> noticelist = getNoticesBycondtion(page1);
//	      
//	        Integer totalCounts1 = noticeService.getTotalCount(page1);//总条数
//
//	        int totalPages1=(totalCounts1%pageSize1==0)?(totalCounts1/pageSize1):(totalCounts1/pageSize1+1);//总页数=总条数/页大小+1
//
//	        p.setTotalPage(totalPages1);//总页数
//
//	        page1.setTotalRows(totalCounts1);//总行数
//
//	    //    request.setAttribute("noticelist",noticelist);
////
//      //  request.setAttribute("page", page);
//	        session.setAttribute("noticelist",noticelist);
//	        session.setAttribute("page", page1);
//	        //return "index2.action";
//	        mv.setView(new RedirectView("init2.do")); 
//	        return mv;
//	    }
//
//	    
//	    
//	    
//	    private List<NoticeEntity> getNoticesBycondtion(Page page1) {
//	    	
//	        List<NoticeEntity> noticelist =null;
//	        if (page1.getTitleCondition()==null) {
//	            
//	            noticelist = noticeService.getNoticesList(page1);
//	            
//	            return noticelist;
//	            
//	        }
//	        
//	            noticelist = noticeService.getNoticesBycondtion(page1);
//	        
//	        
//	        return noticelist;
//	        
//	    }
//
//	    /**
//	     * 删除公告的方法
//	     * @param id
//	     * @return
//	     */
//	    @RequestMapping("isdelete.do")
//	    public String deleteNotice(Integer id) {
//
//	         noticeService.deleteNotice(id);
//	         
//	         return "init.do";
//	    }
//
//	    /**
//	     * 根据当前页获取开始行
//	     * @param currentPage
//	     * @param pageSize
//	     * @return
//	     */
//	    
//	    public int getStartRowBycurrentPage(int currentPage1,int pageSize1){
//	        
//	        int startRow1=0;
//	        
//	        if (currentPage1==1) {
//	            
//	            return startRow1=0;
//	        }
//	        
//	        startRow1=(currentPage1-1)*pageSize1;
//	        
//	        return startRow1;
//	        
//	    }
//	    /**
//	     * 查看公告的方法
//	     * @param id
//	     * @return
//	     */
//	    @RequestMapping(" getdetails.do")
//	    public String getNotice(Integer id,HttpServletRequest request) {
//
//	    	NoticeEntity notice= noticeService.getNotice(id);
//	    	
//	       request.setAttribute("notice",notice);
//	         return "DetailsOfTheAnnouncement";
//	    } 
//	    
//	   
//}
		package com.dxm.edu.controller;
		
		import java.io.IOException;
import java.io.UnsupportedEncodingException;
		
		import java.util.List;
		




		import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
		




		import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
		
		import org.springframework.web.bind.annotation.RequestMapping;
		
		import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
		
		




		import com.dxm.edu.entity.NoticeEntity;
import com.dxm.edu.entity.Page2;
import com.dxm.edu.service.NoticeService;
		
		
		@Controller("notice")
		@Scope("prototype")
		public class NoticeController
		{
		
			@Autowired
			
			
			private NoticeService noticeService;
			
		 
		      
			    @RequestMapping("init.do")
			    public ModelAndView getNoticesList(Page2 page2,ModelAndView mv,HttpSession session,HttpServletRequest request) throws UnsupportedEncodingException {
		
			        //组装page对象,传入方法中查询列表 回显数据
			        Page2 p =page2;
			        int pageSize2=4; //设置每页大小
			        p.setPageSize2(pageSize2);
			        int curPage2=p.getCurrentPage2();
			        
			        if (curPage2==0) {
			            curPage2=1;
			            p.setCurrentPage2(curPage2);
			        }
			        int startRow2 =page2.getStartRow2();
			        
			        if (!(p.getCurrentPage2()==0)) {
			             startRow2 = getStartRowBycurrentPage(curPage2, pageSize2);
			        }
			        
			        p.setStartRow2(startRow2);
			        
			        
			        String titleCondition2=null;
			        if (page2.getTitleCondition2()!=null) {
			        	titleCondition2 = page2.getTitleCondition2();//查询条件
			        	String method = request.getMethod();
			            if("GET".equals(method)){
			            	titleCondition2= new String(titleCondition2.getBytes("iso8859-1"),"UTF-8");
			            page2.setTitleCondition2(titleCondition2);
			            }
			        }
			        
			            
		
		
			        List<NoticeEntity> noticelist = getNoticesBycondtion(page2);
			      
			        Integer totalCounts2 = noticeService.getTotalCount(page2);//总条数
		
			        int totalPages2=(totalCounts2%pageSize2==0)?(totalCounts2/pageSize2):(totalCounts2/pageSize2+1);//总页数=总条数/页大小+1
		
			        p.setTotalPage2(totalPages2);//总页数
		
			        page2.setTotalRows2(totalCounts2);//总行数
		
			     // request.setAttribute("noticelist",noticelist);
		//
		       // request.setAttribute("page2", page2);
			        session.setAttribute("noticelist",noticelist);
			        session.setAttribute("page2", page2);
			        //return "index2.action";
			        mv.setView(new RedirectView("init2.do")); 
			        return mv;
			    }
		
			    
			    
			    
			    private List<NoticeEntity> getNoticesBycondtion(Page2 page2) {
			    	
			        List<NoticeEntity> noticelist =null;
			        if (page2.getTitleCondition2()==null) {
			            
			            noticelist = noticeService.getNoticesList(page2);
			            
			            return noticelist;
			            
			        }
			        
			            noticelist = noticeService.getNoticesBycondtion(page2);
			        
			        
			        return noticelist;
			        
			    }
		
			    /**
			     * 删除公告的方法
			     * @param id
			     * @throws IOException 
			     */
			    @RequestMapping("isdelete.do")
			    public ModelAndView deleteNotice(Integer id,ModelAndView mv,HttpServletResponse response ) throws IOException {
		
			     Integer a=    noticeService.deleteNotice(id);
			         if(a==1){
			         mv.setView(new RedirectView("init.do")); 
				    
				     }else{
				    	  mv.setViewName("500");
				    	 
				     }
			         
			         return mv;  
			    }
		
			    /**
			     * 根据当前页获取开始行
			     * @param currentPage
			     * @param pageSize
			     * @return
			     */
			    
			    public int getStartRowBycurrentPage(int currentPage2,int pageSize2){
			        
			        int startRow2=0;
			        
			        if (currentPage2==1) {
			            
			            return startRow2=0;
			        }
			        
			        startRow2=(currentPage2-1)*pageSize2;
			        
			        return startRow2;
			        
			    }
			    /**
			     * 查看公告的方法
			     * @param id
			     * @return
			     */
			    @RequestMapping(" getdetails.do")
			    public String getNotice(Integer id,HttpServletRequest request) {
		
			    	NoticeEntity notice= noticeService.getNotice(id);
			    	
			       request.setAttribute("notice",notice);
			         return "DetailsOfTheAnnouncement";
			    } 
			    
			   
		}