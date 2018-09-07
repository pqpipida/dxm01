package com.dxm.edu.service;

import java.util.List;

import com.dxm.edu.entity.NoticeEntity;

import com.dxm.edu.entity.Page2;



public interface NoticeService {


	    List<NoticeEntity> getNoticesList(Page2 page2);

	    
	    Integer getTotalCount(Page2 page2);

	    
	    Integer deleteNotice(Integer id);
	    
	    List<NoticeEntity> getNoticesBycondtion(Page2 page2);


		NoticeEntity getNotice(Integer id);


	
	//public PageInfo<NoticeEntity> getNotices(Integer pageNum, Integer pageSize, NoticeEntity notice);
	
	
}
