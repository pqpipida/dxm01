package com.dxm.edu.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;








import com.dxm.edu.entity.RecordofApprovalEntity;
import com.dxm.edu.mapper.RecordofApprovalMapper;
import com.dxm.edu.service.RecordofApprovalService;

@Service
public class RecordofApprovalServiceImpl  implements RecordofApprovalService{
	@Autowired
	public RecordofApprovalMapper recordofapprovalMapper;
	 //增加采购需求
	public boolean insertRecordofApproval(RecordofApprovalEntity record )
	 {
	        boolean flag = false;
	        try
	        {
	        	recordofapprovalMapper.insertRecordofApproval(record );
	           flag = true;
	           
	           
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	public boolean getDocumentnumber(String documentnumber){
		 boolean flag = false;
	        try
	        {
	        	List<RecordofApprovalEntity> r=  recordofapprovalMapper.getbyDocumentnumber(documentnumber);
	        	   if(!r.isEmpty())
		           {
		        	   flag = true;
		           
		           }else{
		        	   flag = false;
		        	   
		           }
	           
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
		
		
	}
	
	

	public List<RecordofApprovalEntity> getRecordsbydocumentnumber(
			String documentnumber){
		 return recordofapprovalMapper.getRecordbydocumentnumber(documentnumber);
		
	}
	
	
}
