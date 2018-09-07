package com.dxm.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.PurchaseOrderEntity;

import com.dxm.edu.mapper.PurchaseOrderMapper;

import com.dxm.edu.service.PurchaseOrderService;

@Service

	
public class PurchaseOrderServiceImpl implements PurchaseOrderService {
	@Autowired
    public PurchaseOrderMapper poMapper;
	
	
    public List<PurchaseOrderEntity> getPOsList(Page page) {
        return poMapper.getPOsList(page);
    }
   

    public Integer deletePO(Integer id){
         return poMapper.deletePO(id);
    }


    public Integer getPOTotalCount(Page page) {
       
    	 return poMapper.getPOTotalCount(page);
    }
    
	public List<PurchaseOrderEntity> getPOsBycondtion(Page page){
        return poMapper.getPOsBycondtion(page);
    }
	

	
}
