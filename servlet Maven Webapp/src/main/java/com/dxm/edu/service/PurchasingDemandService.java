package com.dxm.edu.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchasingDemandEntity;
import com.dxm.edu.entity.RecordofApprovalEntity;


public interface PurchasingDemandService {
		public boolean insertPurchasingDemand( PurchasingDemandEntity  purchasingdemandEntity );
		 
		List<PurchasingDemandEntity> getPDsList(Page page);
		List<PurchasingDemandEntity> getPDsList2(Page page);
	
	    Integer getPDTotalCount(Page page);
	    Integer getPDTotalCount2(Page page);
	    
	    List<PurchasingDemandEntity> getPDsBycondtion(Page page);
	    List<PurchasingDemandEntity> getPDsBycondtion2(Page page);

		//String goeditPD( String purchasingdemandid);

		public PurchasingDemandEntity gotoEditPD(String purchasingdemandid);

		public boolean getDocumentnumber(String documentnumber);

		public boolean updateState(String state, String purchasingdemandid);

		public boolean updatePurchasingDemand(
				PurchasingDemandEntity purchasingdemandEntity);

		 public  boolean deletedemandbyID(String purchasingdemandid);



		
		
		
		 //   Integer deletePO(Integer id);

		
		
}
