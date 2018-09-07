package com.dxm.edu.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchasingDemandEntity;
import com.dxm.edu.entity.RecordofApprovalEntity;


public interface  PurchasingDemandMapper {
	
	int insertPurchasingDemand(PurchasingDemandEntity purchasingdemandEntity  );//新增采购需求
	
	 public List<PurchasingDemandEntity>  getPDsList(Page page);//查询采购需求列表
	 public	List<PurchasingDemandEntity> getPDsList2(Page page);   
	 public List<PurchasingDemandEntity> getPDsBycondtion(Page page);//根据条件查询帖子采购需求
	 public List<PurchasingDemandEntity> getPDsBycondtion2(Page page);
	    
	 public Integer getPDTotalCount(Page page);//搜索采购需求总数量
	 public Integer getPDTotalCount2(Page page);//搜索采购需求总数量


	//String goeditPD(String purchasingdemandid)
	PurchasingDemandEntity selectByPrimaryKey(String purchasingdemandid);//采购审核-采购需求订单审批

	List<PurchasingDemandEntity> getDocumentnumber(String documentnumber);
	

	boolean updateState(@Param("state")String state, @Param("purchasingdemandid")String purchasingdemandid);

	boolean updatePurchasingDemand(PurchasingDemandEntity purchasingdemandEntity);

	 int deletedemandbyID(String purchasingdemandid);



	
    
	//public Integer deletePO(Integer id);//根据id删除采购需求
	
}


