package com.dxm.edu.service;

import java.util.List;

import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchaseOrderEntity;


public interface PurchaseOrderService {

    List<PurchaseOrderEntity> getPOsList(Page page);

    
    Integer getPOTotalCount(Page page);

    
    Integer deletePO(Integer id);
    
    List<PurchaseOrderEntity> getPOsBycondtion(Page page);

}
