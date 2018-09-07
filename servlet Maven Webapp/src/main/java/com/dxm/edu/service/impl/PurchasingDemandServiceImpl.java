package com.dxm.edu.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchasingDemandEntity;
import com.dxm.edu.entity.RecordofApprovalEntity;
import com.dxm.edu.mapper.PurchasingDemandMapper;
import com.dxm.edu.mapper.RecordofApprovalMapper;
import com.dxm.edu.service.PurchasingDemandService;

@Service
public class PurchasingDemandServiceImpl implements PurchasingDemandService {
	 @Autowired
	public PurchasingDemandMapper purchasingdemandMapper;
	 public RecordofApprovalMapper recordofapprovalMapper;
	 //增加采购需求
	 @Override
	 public boolean insertPurchasingDemand(PurchasingDemandEntity purchasingdemandEntity  )
	 {
	        boolean flag = false;
	        try
	        {
	            
	            SimpleDateFormat df2 = new SimpleDateFormat("yyMMddHHmmss");
	            String sdate = df2.format(new Date());
	            purchasingdemandEntity .setPurchasingdemandid(sdate);
	      
	           
	            purchasingdemandMapper.insertPurchasingDemand(purchasingdemandEntity );
	            
	            
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
		 //获取采购需求列表
		 
		 public List<PurchasingDemandEntity> getPDsList(Page page) {
		        return purchasingdemandMapper.getPDsList(page);
		    }

		 public List<PurchasingDemandEntity> getPDsList2(Page page) {
		        return purchasingdemandMapper.getPDsList2(page);
		    }
       //获取采购需求总数
	   @Override
	    public Integer getPDTotalCount(Page page) {
	       
	    	 return purchasingdemandMapper.getPDTotalCount(page);
	    }
	   @Override
	    public Integer getPDTotalCount2(Page page) {
	       
	    	 return purchasingdemandMapper.getPDTotalCount2(page);
	    }
	   //根据条件查询采购需求
	    public List<PurchasingDemandEntity> getPDsBycondtion(Page page){
	        return purchasingdemandMapper.getPDsBycondtion(page);
	    }
	    public List<PurchasingDemandEntity> getPDsBycondtion2(Page page){
	        return purchasingdemandMapper.getPDsBycondtion2(page);
	    }
	    public  boolean deletedemandbyID(String purchasingdemandid){
	    	
	       
	            boolean flag = false;
	            try
	            {
	            	purchasingdemandMapper.deletedemandbyID(purchasingdemandid);
	               
	                flag = true;
	            }
	            catch (Exception e)
	            {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	            return flag;
	       
	    }

		public PurchasingDemandEntity gotoEditPD(String purchasingdemandid){

	        return purchasingdemandMapper.selectByPrimaryKey(purchasingdemandid);
			
			
			
		}
		
		public boolean getDocumentnumber(String documentnumber){
			
			 boolean flag = false;
		        try
		        {
		          
		        List<PurchasingDemandEntity> pd    =   purchasingdemandMapper.getDocumentnumber(documentnumber);
		            if(!pd.isEmpty()){
		            
		            flag = true;
		        }else{
		        	 flag =false;
		        }
		        }
		            
		        catch (Exception e)
		        {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
		        return flag;
		    
			
		}

		public boolean updateState(String state,String purchasingdemandid){
			 boolean flag = false;
		        try
		        {
		        	purchasingdemandMapper.updateState(state,purchasingdemandid);
		        	flag = true;
		        }
		        catch (Exception e)
		        {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
		        return flag;
		    
		}
		public boolean updatePurchasingDemand(PurchasingDemandEntity purchasingdemandEntity){
			
			
			 boolean flag = false;
		        try
		        {
		        	purchasingdemandMapper.updatePurchasingDemand(purchasingdemandEntity);
		        	flag = true;
		        }
		        catch (Exception e)
		        {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
		        return flag;
		    
		}
	
		
}


