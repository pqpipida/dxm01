package com.dxm.edu.mapper;


import java.util.List;

import com.dxm.edu.entity.NoticeEntity;
import com.dxm.edu.entity.Page;
import com.dxm.edu.entity.Page2;


public interface  NoticeMapper {

	

    public List<NoticeEntity>  getNoticesList(Page2 page2);//查询帖子列表
    
    public List<NoticeEntity> getNoticesBycondtion(Page2 page2);//根据条件查询帖子
    
	public Integer getTotalCount(Page2 page2);//搜索总数量
    
    public Integer deleteNotice(Integer id);//根据id删除帖子

	public NoticeEntity getNotice(Integer id);



}
