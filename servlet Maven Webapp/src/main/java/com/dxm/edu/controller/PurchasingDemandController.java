package com.dxm.edu.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchaseOrderEntity;
import com.dxm.edu.entity.PurchasingDemandEntity;
import com.dxm.edu.entity.RecordofApprovalEntity;
import com.dxm.edu.entity.UserInfoEntity;
import com.dxm.edu.service.PurchasingDemandService;
import com.dxm.edu.service.RecordofApprovalService;



@Controller
public class PurchasingDemandController {

	@Autowired
	private PurchasingDemandService purchasingdemandService;
	@Autowired
	private  RecordofApprovalService recordofapprovalService;
	
	@RequestMapping(value = "Procurement_DemandCreation")
	public String Procurement_DemandCreation() {
	
		return "Procurement_DemandCreation";
	}
	///检测单据编号是否唯一
	
	 @RequestMapping(value = "checkdocumentnumber")
	  public void checkdocumentnumber( HttpServletResponse response,HttpServletRequest request,String documentnumber ) throws IOException{
		    //获取单据审批记录信息并保存至数据库
		 System.out.println(documentnumber);
		boolean flag =  purchasingdemandService.getDocumentnumber(documentnumber);
		boolean flag2 = recordofapprovalService.getDocumentnumber(documentnumber);
		if(flag2||flag) {
						
			response.getWriter().write("yes");
		
						
		} else {
			response.getWriter().write("no");
						
		}
		
	}
     
	 
	 /////保存创建的采购需求信息-基本情况至数据库
    @RequestMapping(value = "insertpurchasingdemand", method=RequestMethod.POST)
    public void insertpurchasingdemand(HttpServletResponse response,HttpServletRequest request, PurchasingDemandEntity purchasingdemandEntity) throws IOException{
    //检测单据编号是否唯一
    	
    	String documentnumber=purchasingdemandEntity.getDocumentnumber();	
    	String method = request.getMethod();
        if("GET".equals(method)){
        	documentnumber= new String(documentnumber.getBytes("iso8859-1"),"UTF-8");
        	purchasingdemandEntity.setDocumentnumber(documentnumber);
        }
    	boolean flag3 =  purchasingdemandService.getDocumentnumber(documentnumber);
		boolean flag4 = recordofapprovalService.getDocumentnumber(documentnumber);
		if(flag3&&flag4) {
			
		System.out.println("失败,单据编号已存在");
		response.getWriter().write("单据编号重复，重新输入");	
						
		} else {
			System.out.println("单据编号没问题继续保存");

	    	//获取单据审批记录信息并保存至数据库
	    	// String id="1";
	        java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
	    	String operator=purchasingdemandEntity.getApplicant();
	    	String company=purchasingdemandEntity.getApplicationunit();
	    	String operation="创建";
	    	String opinion="";
	    	String num=purchasingdemandEntity.getDocumentnumber();
	    	RecordofApprovalEntity record=new RecordofApprovalEntity();
	    	//record.setId(id);
	    	record.setOperator(operator);
	    	record.setCompany(company);
	    	record.setOperation(operation);
	    	record.setOpinion(opinion);
	        record.setNum(num);
	        record.setTime(time);
	        
	        
	    	String state="草稿";
	    	purchasingdemandEntity.setState(state);
	    	
				boolean flag =  purchasingdemandService.insertPurchasingDemand(purchasingdemandEntity);
				
				boolean flag2 = recordofapprovalService.insertRecordofApproval(record);
				if(flag2||flag) {
					
					response.getWriter().write("success");
					
					
				} else {
					response.getWriter().write("failure");
					
				}		
		
		}
    	
    }
    /////更新创建的采购需求信息-基本情况至数据库（草稿状态的订单，修改后保存，订单号不能更改）
    @RequestMapping(value = "updatepurchasingdemand", method=RequestMethod.POST)
    public void updatepurchasingdemand(HttpServletResponse response,HttpServletRequest request, PurchasingDemandEntity purchasingdemandEntity) throws IOException{
    //检测单据编号是否唯一
    	
    	String documentnumber=purchasingdemandEntity.getDocumentnumber();	
    	String method = request.getMethod();
        if("GET".equals(method)){
        	documentnumber= new String(documentnumber.getBytes("iso8859-1"),"UTF-8");
        	purchasingdemandEntity.setDocumentnumber(documentnumber);
        }
    

	    	//获取单据审批记录信息并保存至数据库
	    
	        java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
	    	String operator=purchasingdemandEntity.getApplicant();
	    	String company=purchasingdemandEntity.getApplicationunit();
	    	String operation="创建";
	    	String opinion="";
	    	String num=purchasingdemandEntity.getDocumentnumber();
	    	RecordofApprovalEntity record=new RecordofApprovalEntity();
	   	
	    	record.setOperator(operator);
	    	record.setCompany(company);
	    	record.setOperation(operation);
	    	record.setOpinion(opinion);
	        record.setNum(num);
	        record.setTime(time);
	        
	        
	    	String state="草稿";
	    	purchasingdemandEntity.setState(state);
	    	
				boolean flag =  purchasingdemandService.updatePurchasingDemand(purchasingdemandEntity);
				
				boolean flag2 = recordofapprovalService.insertRecordofApproval(record);
				if(flag2&&flag) {
					
					response.getWriter().write("success");
					
					
				} else {
					response.getWriter().write("failure");
					
				}		
		
		}
    	
    
    
    

    /////提交创建的采购需求信息-基本情况（状态改变为待审批)
    @RequestMapping(value = "adddemand", method=RequestMethod.POST)
    public void adddemand( HttpServletResponse response,HttpServletRequest request,PurchasingDemandEntity purchasingdemandEntity) throws IOException{
    	  //检测单据编号是否唯一
    	String documentnumber=purchasingdemandEntity.getDocumentnumber();	
    	String method = request.getMethod();
        if("GET".equals(method)){
        	documentnumber= new String(documentnumber.getBytes("iso8859-1"),"UTF-8");
        	purchasingdemandEntity.setDocumentnumber(documentnumber);
        }
    	boolean flag3 =  purchasingdemandService.getDocumentnumber(documentnumber);
		boolean flag4 = recordofapprovalService.getDocumentnumber(documentnumber);
		if(flag3||flag4) {
			
		System.out.println("失败,单据编号已存在");
		response.getWriter().write("单据编号重复，重新输入");	
						
		} else {
			System.out.println("单据编号没问题继续保存");	
		
    	java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
       	String operator=purchasingdemandEntity.getApplicant();
       	String company=purchasingdemandEntity.getApplicationunit();
       	String operation="提交";
       	String opinion="同意";
       	String num=purchasingdemandEntity.getDocumentnumber();
       	
       	RecordofApprovalEntity record=new RecordofApprovalEntity();
       
       	record.setOperator(operator);
       	record.setCompany(company);
       	record.setOperation(operation);
       	record.setOpinion(opinion);
        record.setNum(num);
        record.setTime(time);
           
           
    	String state="待审批";
    	purchasingdemandEntity.setState(state);
			boolean flag =  purchasingdemandService.insertPurchasingDemand(purchasingdemandEntity);
			boolean flag2 = recordofapprovalService.insertRecordofApproval(record);
			
			if(flag||flag2) {
				response.getWriter().write("success");
			
			} else {
				response.getWriter().write("failure");
				
			}
		}	
		}
    /////提交创建的采购需求信息-基本情况（状态改变为待审批)
    @RequestMapping(value = "updatedemand", method=RequestMethod.POST)
    public void updatedemand( HttpServletResponse response,HttpServletRequest request,PurchasingDemandEntity purchasingdemandEntity) throws IOException{
    	  //检测单据编号是否唯一
    	String documentnumber=purchasingdemandEntity.getDocumentnumber();	
    	String method = request.getMethod();
        if("GET".equals(method)){
        	documentnumber= new String(documentnumber.getBytes("iso8859-1"),"UTF-8");
        	purchasingdemandEntity.setDocumentnumber(documentnumber);
        }
    	
		
    	java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
       	String operator=purchasingdemandEntity.getApplicant();
       	String company=purchasingdemandEntity.getApplicationunit();
       	String operation="提交";
       	String opinion="同意";
       	String num=purchasingdemandEntity.getDocumentnumber();
       	
       	RecordofApprovalEntity record=new RecordofApprovalEntity();
       
       	record.setOperator(operator);
       	record.setCompany(company);
       	record.setOperation(operation);
       	record.setOpinion(opinion);
        record.setNum(num);
        record.setTime(time);
           
           
    	String state="待审批";
    	purchasingdemandEntity.setState(state);
			boolean flag =  purchasingdemandService.updatePurchasingDemand(purchasingdemandEntity);
			boolean flag2 = recordofapprovalService.insertRecordofApproval(record);
			
			if(flag||flag2) {
				response.getWriter().write("success");
			
			} else {
				response.getWriter().write("failure");
				
			}
		}	
		
    


    /////获取采购需求列表
    @RequestMapping(value = "getpurchasingdemandlists")
    public String getpurchasingdemandlists(Page page,HttpServletRequest request) throws UnsupportedEncodingException {

        //组装page对象,传入方法中查询列表 回显数据
        Page p =page;
        int pageSize=4; //设置每页大小
        p.setPageSize(pageSize);
        int curPage=p.getCurrentPage();
        
        if (curPage==0) {
            curPage=1;
            p.setCurrentPage(curPage);
        }
        int startRow =page.getStartRow();
        
        if (!(p.getCurrentPage()==0)) {
             startRow = getStartRowBycurrentPage(curPage, pageSize);
        }
        
        p.setStartRow(startRow);
        
       
        String queryCondition=null;
   
        String documentnumberQueryCondition=null;
        String applicationunitQueryCondition=null;
        
        if (page.getQueryCondition()!=null) {
             queryCondition = page.getQueryCondition();//查询条件  
        }
        
        if (page.getDocumentnumberQueryCondition()!=null) {
        documentnumberQueryCondition=page.getDocumentnumberQueryCondition();
        String method = request.getMethod();
        if("GET".equals(method)){
        documentnumberQueryCondition= new String(documentnumberQueryCondition.getBytes("iso8859-1"),"UTF-8");
        page.setDocumentnumberQueryCondition(documentnumberQueryCondition);
        }
        }
        
        
        if (page.getApplicationunitQueryCondition()!=null) {
        applicationunitQueryCondition=page.getApplicationunitQueryCondition();
    	String method = request.getMethod();
        if("GET".equals(method)){
        applicationunitQueryCondition= new String(applicationunitQueryCondition.getBytes("iso8859-1"),"UTF-8");
        page.setApplicationunitQueryCondition(applicationunitQueryCondition);
        }
        }
        
        List<PurchasingDemandEntity> purchasingdemandlist = getPDsBycondtion(page);

        Integer totalCounts = purchasingdemandService.getPDTotalCount(page);//总条数

        int totalPages=(totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1);//鎬婚〉鏁�鎬绘潯鏁�椤靛ぇ灏�1

        p.setTotalPage(totalPages);//总页数

        page.setTotalRows(totalCounts);//总行数

        request.setAttribute("purchasingdemand",purchasingdemandlist);

        request.setAttribute("page", page);

        return "Procurement_PurchaseApplication";
    }

 
    private List<PurchasingDemandEntity> getPDsBycondtion(Page page) {
        
        List<PurchasingDemandEntity> purchasingdemandlist =null;
       if(page.getQueryCondition()==null ){
		
			        	if(page.getDocumentnumberQueryCondition()==null)
			        	{
			        		
			                if(page.getApplicationunitQueryCondition()==null)
			                {
			                	
			                	purchasingdemandlist = purchasingdemandService. getPDsList(page);
			                
			                    return purchasingdemandlist;
			                    
			                }else{
			                	
			                
			                	 purchasingdemandlist = purchasingdemandService.getPDsBycondtion(page);
			                	 
			         	        
			          	         return purchasingdemandlist;
			          	    
			          	         }
			
			        	}
			            purchasingdemandlist = purchasingdemandService.getPDsBycondtion(page);
			         	        
			         	        
			            return purchasingdemandlist;
			        	}
       
       purchasingdemandlist = purchasingdemandService.getPDsBycondtion(page);
        
        
       return purchasingdemandlist;
    }
			private List<PurchasingDemandEntity> getPDsBycondtion2(Page page) {
			        
			        List<PurchasingDemandEntity> purchasingdemandlist =null;
			       if(page.getQueryCondition()==null ){
					
						        	if(page.getDocumentnumberQueryCondition()==null)
						        	{
						        		
						                if(page.getApplicationunitQueryCondition()==null)
						                {
						                	
						                	purchasingdemandlist = purchasingdemandService. getPDsList(page);
						                
						                    return purchasingdemandlist;
						                    
						                }else{
						                	
						                
						                	 purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
						                	 
						         	        
						          	         return purchasingdemandlist;
						          	    
						          	         }
						
						        	}
						            purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
						         	        
						         	        
						            return purchasingdemandlist;
						        	}
			       
			       purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
			        
			        
			       return purchasingdemandlist;
			    }
			      
    
    
  /*  *//**
     * 删除需求的方法
     * @param id
     * @return
     *//*
    @RequestMapping("isdelete2.do")
    public String deletePO(Integer paid) {

    	purchasingdemandService.deletePD(paid);
         
         return "index2";
    }*/
    
 
         
    /**
     * 根据当前页获取开始行
     * @param currentPage
     * @param pageSize
     * @return
     */
    
    
    public int getStartRowBycurrentPage(int currentPage,int pageSize){
        
        int startRow=0;
        
        if (currentPage==1) {
            
            return startRow=0;
        }
        
        startRow=(currentPage-1)*pageSize;
        
        return startRow;
        
    }

    
    @RequestMapping(value = "Procurement_PurchasingAudit")
	public String Procurement_PurchasingAudit() {
	
		return "Procurement_PurchasingAudit";
	}
  ///得到采购审核查询状态为待审核的订单列表
    @RequestMapping("getStateisdshlists")
    public String getStateisdshlists(Page page,HttpServletRequest request) throws UnsupportedEncodingException {

        //组装page对象,传入方法中查询列表 回显数据
        Page p =page;
        int pageSize=4; //设置每页大小
        p.setPageSize(pageSize);
        int curPage=p.getCurrentPage();
        
        if (curPage==0) {
            curPage=1;
            p.setCurrentPage(curPage);
        }
        int startRow =page.getStartRow();
        
        if (!(p.getCurrentPage()==0)) {
             startRow = getStartRowBycurrentPage(curPage, pageSize);
        }
        
        p.setStartRow(startRow);
        
       
          String queryCondition="待审批";

          String documentnumberQueryCondition="";
          String applicationunitQueryCondition="";
        
         page.setQueryCondition(queryCondition);
    page.setApplicationunitQueryCondition(applicationunitQueryCondition);
    page.setDocumentnumberQueryCondition(documentnumberQueryCondition);
        if (page.getQueryCondition()!=null) {
             queryCondition = page.getQueryCondition();//查询条件  
             System.out.println(queryCondition);      
             }
        
        if (page.getDocumentnumberQueryCondition()!=null) {
        documentnumberQueryCondition=page.getDocumentnumberQueryCondition();
        String method = request.getMethod();
        if("GET".equals(method)){
        documentnumberQueryCondition= new String(documentnumberQueryCondition.getBytes("iso8859-1"),"UTF-8");
        page.setDocumentnumberQueryCondition(documentnumberQueryCondition);
        }
        
        }
        if (page.getApplicationunitQueryCondition()!=null) {
        applicationunitQueryCondition=page.getApplicationunitQueryCondition();
        }
        
        List<PurchasingDemandEntity> purchasingdemandlist = getPDsBycondtion2(page);

        Integer totalCounts = purchasingdemandService.getPDTotalCount2(page);//总条数

        int totalPages=(totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1);//鎬婚〉鏁�鎬绘潯鏁�椤靛ぇ灏�1

        p.setTotalPage(totalPages);//总页数

        page.setTotalRows(totalCounts);//总行数

        request.setAttribute("purchasingdemand",purchasingdemandlist);

        request.setAttribute("page", page);

        return "Procurement_PurchasingAudit";
    }
    //搜索框输入采购订单编号查询
    @RequestMapping(value = "getStateisdshlists2")
    public String getStateisdshlists2(Page page,HttpServletRequest request) throws UnsupportedEncodingException {

        //组装page对象,传入方法中查询列表 回显数据
        Page p =page;
        int pageSize=4; //设置每页大小
        p.setPageSize(pageSize);
        int curPage=p.getCurrentPage();
        
        if (curPage==0) {
            curPage=1;
            p.setCurrentPage(curPage);
        }
        int startRow =page.getStartRow();
        
        if (!(p.getCurrentPage()==0)) {
             startRow = getStartRowBycurrentPage(curPage, pageSize);
        }
        
        p.setStartRow(startRow);
        
       
          String queryCondition="待审批";

          String documentnumberQueryCondition=null;
          String applicationunitQueryCondition="";
        
         page.setQueryCondition(queryCondition);
    page.setApplicationunitQueryCondition(applicationunitQueryCondition);
        if (page.getQueryCondition()!=null) {
             queryCondition = page.getQueryCondition();//查询条件  
             System.out.println(queryCondition);      
             }
        
        if (page.getDocumentnumberQueryCondition()!=null) {
            documentnumberQueryCondition=page.getDocumentnumberQueryCondition();
            String method = request.getMethod();
            if("GET".equals(method)){
            documentnumberQueryCondition= new String(documentnumberQueryCondition.getBytes("iso8859-1"),"UTF-8");
            page.setDocumentnumberQueryCondition(documentnumberQueryCondition);
            }
            
            }
        if (page.getApplicationunitQueryCondition()!=null) {
        applicationunitQueryCondition=page.getApplicationunitQueryCondition();
        }
        
        List<PurchasingDemandEntity> purchasingdemandlist = getPDsBycondtion2(page);

        Integer totalCounts = purchasingdemandService.getPDTotalCount2(page);//总条数

        int totalPages=(totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1);//鎬婚〉鏁�鎬绘潯鏁�椤靛ぇ灏�1

        p.setTotalPage(totalPages);//总页数

        page.setTotalRows(totalCounts);//总行数

        request.setAttribute("purchasingdemand",purchasingdemandlist);

        request.setAttribute("page", page);

        return "Procurement_PurchasingAudit";
    }
    
    /**
     * 采购需求审批
     * @param id
     * @return
     * @throws UnsupportedEncodingException 
     */
    @RequestMapping(value = "editpurchasingdemand")
   
    public String gotoeditPD ( String purchasingdemandid,HttpServletRequest request,String documentnumber ) throws UnsupportedEncodingException {
    	String num=(String)request.getParameter("documentnumber");
        
    	String method = request.getMethod();
    	           
    	if("GET".equals(method)){
    	      num = new String(num.getBytes("iso8859-1"),"UTF-8");
    	}
    	 
    	PurchasingDemandEntity purchasingdemand = purchasingdemandService.gotoEditPD(purchasingdemandid);
    	List<RecordofApprovalEntity> records = new ArrayList<RecordofApprovalEntity>();
    			
    	records=recordofapprovalService.getRecordsbydocumentnumber(num);
    	
		 request.setAttribute("purchasingdemand",purchasingdemand);
		 request.setAttribute("records",records);
		 
		return "Procurement_PurchasingAuditOperation";
    
    }
    
   
    @RequestMapping(value = "checkpurchasingdemand")
    
    public String  checkpurchasingdemand( String purchasingdemandid,HttpServletRequest request,String documentnumber ) throws UnsupportedEncodingException {
    	String num=(String)request.getParameter("documentnumber");
        
    	String method = request.getMethod();
    	           
    	if("GET".equals(method)){
    	      num = new String(num.getBytes("iso8859-1"),"UTF-8");
    	}
    	 
    	PurchasingDemandEntity purchasingdemand = purchasingdemandService.gotoEditPD(purchasingdemandid);
    	List<RecordofApprovalEntity> records = new ArrayList<RecordofApprovalEntity>();
    			
    	records=recordofapprovalService.getRecordsbydocumentnumber(num);
    	String state=purchasingdemand.getState();
		 request.setAttribute("purchasingdemand",purchasingdemand);
		 request.setAttribute("records",records);
		 if(state.equals("已发布")){
		return "Procurement_PricePurchaseAuditThrough";
		}else if(state.equals("审核中")){
			return "Procurement_PricePurchaseAudit";	
			
		}
		 return"getpurchasingdemandlists";
    
    }
    
    @RequestMapping(value = "updateRecord")
    
    public void updateRecord (HttpServletResponse response,HttpServletRequest request,
    		String opinion,String company,String operator,String documentnumber,
    		String purchasingdemandid) throws IOException {
    	String opinion1=(String)request.getParameter("opinion");
    	String operator1=(String)request.getParameter("operator");
    	String company1=(String)request.getParameter("company");
    	String documentnumber1=(String)request.getParameter("documentnumber");
    	String method = request.getMethod();
    	          
    	if("GET".equals(method)){
    		opinion1= new String(opinion1.getBytes("iso8859-1"),"UTF-8");
    		operator1= new String(operator1.getBytes("iso8859-1"),"UTF-8");
    		company1= new String(company1.getBytes("iso8859-1"),"UTF-8");
    		documentnumber1= new String(documentnumber1.getBytes("iso8859-1"),"UTF-8");
    	}
    	 
    	 java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
	    	
	    	String operation="审核";
	    
	    	RecordofApprovalEntity record=new RecordofApprovalEntity();
	    	
	    	record.setOperator(operator1);
	    	record.setCompany(company1);
	    	record.setOperation(operation);
	    	record.setOpinion(opinion1);
	        record.setNum(documentnumber1);
	        record.setTime(time);
	        
	    	String state="审核中";
	
	    	
	    boolean flag1 = recordofapprovalService.insertRecordofApproval(record);
	    boolean flag2 = purchasingdemandService.updateState(state,purchasingdemandid);	
			if(flag1&flag2) {
				try {
					response.getWriter().write("success");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			} else {
				response.getWriter().write("failure");
				
			}	
    	
    
    }
  @RequestMapping(value = "rejectdemand")
    
    public void rejectdemand (HttpServletResponse response,HttpServletRequest request,
    		String opinion,String company,String operator,String documentnumber,
    		String purchasingdemandid) throws IOException {
    	String opinion1=(String)request.getParameter("opinion");
    	String operator1=(String)request.getParameter("operator");
    	String company1=(String)request.getParameter("company");
    	String documentnumber1=(String)request.getParameter("documentnumber");
    	String method = request.getMethod();
    	          
    	if("GET".equals(method)){
    		opinion1= new String(opinion1.getBytes("iso8859-1"),"UTF-8");
    		operator1= new String(operator1.getBytes("iso8859-1"),"UTF-8");
    		company1= new String(company1.getBytes("iso8859-1"),"UTF-8");
    		documentnumber1= new String(documentnumber1.getBytes("iso8859-1"),"UTF-8");
    	}
    	 
    	 java.sql.Date time = new java.sql.Date(System.currentTimeMillis());
	    	
	    	String operation="驳回";
	    
	    	RecordofApprovalEntity record=new RecordofApprovalEntity();
	    	
	    	record.setOperator(operator1);
	    	record.setCompany(company1);
	    	record.setOperation(operation);
	    	record.setOpinion(opinion1);
	        record.setNum(documentnumber1);
	        record.setTime(time);
	        
	    	String state="已驳回";
	
	    	
	    boolean flag1 = recordofapprovalService.insertRecordofApproval(record);
	    boolean flag2 = purchasingdemandService.updateState(state,purchasingdemandid);	
			if(flag1&flag2) {
				try {
					response.getWriter().write("success");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			} else {
				response.getWriter().write("failure");
				
			}	
    	
    
    }
  
 //修改处于草稿状态采购申请订单
  @RequestMapping(value = "getpurchasingdemandbyID")
  
  public String getpurchasingdemandbyID(String purchasingdemandid,HttpServletRequest request ) throws UnsupportedEncodingException {
	
  	PurchasingDemandEntity purchasingdemand = purchasingdemandService. gotoEditPD(purchasingdemandid);
	
		 request.setAttribute("purchasingdemand",purchasingdemand);
		
		 
		return "Procurement_PricePurchaseAmendment";
  
  }
  
  @RequestMapping(value = "deletedemandbyID")
  
  public ModelAndView deletedemandbyID(ModelAndView mv,String purchasingdemandid,HttpServletRequest request ) throws UnsupportedEncodingException {
	
	  boolean flag =  purchasingdemandService. deletedemandbyID(purchasingdemandid);
	if(flag){

        mv.setView(new RedirectView("getpurchasingdemandlists"));
	}else{
		 mv.setView(new RedirectView("getpurchasingdemandlists"));
		
	}
		return mv;
		
		 
		
  
  }
  
  @RequestMapping("init2.do")
   
  public String getPDisdsplists(Page page,HttpServletRequest request) throws UnsupportedEncodingException {

	//组装page对象,传入方法中查询列表 回显数据
      Page p =page;
      int pageSize=4; //设置每页大小
      p.setPageSize(pageSize);
      int curPage=p.getCurrentPage();
      
      if (curPage==0) {
          curPage=1;
          p.setCurrentPage(curPage);
      }
      int startRow =page.getStartRow();
      
      if (!(p.getCurrentPage()==0)) {
           startRow = getStartRowBycurrentPage(curPage, pageSize);
      }
      
      p.setStartRow(startRow);
      
     
        String queryCondition="待审批";

        String documentnumberQueryCondition="";
        String applicationunitQueryCondition="";
      
       page.setQueryCondition(queryCondition);
  page.setApplicationunitQueryCondition(applicationunitQueryCondition);
 /* page.setDocumentnumberQueryCondition(documentnumberQueryCondition);*/
      if (page.getQueryCondition()!=null) {
           queryCondition = page.getQueryCondition();//查询条件  
           System.out.println(queryCondition);      
           }
      
      if (page.getDocumentnumberQueryCondition()!=null) {
      documentnumberQueryCondition=page.getDocumentnumberQueryCondition();
      String method = request.getMethod();
      if("GET".equals(method)){
      documentnumberQueryCondition= new String(documentnumberQueryCondition.getBytes("iso8859-1"),"UTF-8");
      page.setDocumentnumberQueryCondition(documentnumberQueryCondition);
      }
      
      }
      if (page.getApplicationunitQueryCondition()!=null) {
      applicationunitQueryCondition=page.getApplicationunitQueryCondition();
      }
      
      List<PurchasingDemandEntity> purchasingdemandlist = getPDsBycondtion2(page);

      Integer totalCounts = purchasingdemandService.getPDTotalCount2(page);//总条数

      int totalPages=(totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1);//鎬婚〉鏁�鎬绘潯鏁�椤靛ぇ灏�1

      p.setTotalPage(totalPages);//总页数

      page.setTotalRows(totalCounts);//总行数

      request.setAttribute("purchasingdemand",purchasingdemandlist);

      request.setAttribute("page", page);

      return "index2";
  }
  
  private List<PurchasingDemandEntity> getPDisdsplistsBycondtion(Page page) {
      
      List<PurchasingDemandEntity> purchasingdemandlist =null;
     if(page.getQueryCondition()==null ){
		
			        	if(page.getDocumentnumberQueryCondition()==null)
			        	{
			        		
			                if(page.getApplicationunitQueryCondition()==null)
			                {
			                	
			                	purchasingdemandlist = purchasingdemandService. getPDsList(page);
			                
			                    return purchasingdemandlist;
			                    
			                }else{
			                	
			                
			                	 purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
			                	 
			         	        
			          	         return purchasingdemandlist;
			          	    
			          	         }
			
			        	}
			            purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
			         	        
			         	        
			            return purchasingdemandlist;
			        	}
     
     purchasingdemandlist = purchasingdemandService.getPDsBycondtion2(page);
      
      
     return purchasingdemandlist;
  }
  
}
