package com.dxm.edu.mapper;

import java.util.List;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchaseOrderEntity;

public interface PurchaseOrderMapper {
	 public List<PurchaseOrderEntity>  getPOsList(Page page);//查询采购订单列表
	    
	 public List<PurchaseOrderEntity> getPOsBycondtion(Page page);//根据条件查询帖子采购订单
	    
	 public Integer getPOTotalCount(Page page);//搜索采购订单总数量
	    
	 public Integer deletePO(Integer id);//根据id删除采购订单
}
