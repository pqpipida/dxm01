package com.dxm.edu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxm.edu.entity.NoticeEntity;
import com.dxm.edu.entity.Page2;
import com.dxm.edu.mapper.NoticeMapper;
import com.dxm.edu.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
    public NoticeMapper noticeMapper;
	
	
    public List<NoticeEntity> getNoticesList(Page2 page2) {
        return noticeMapper.getNoticesList(page2);
    }


    public Integer deleteNotice(Integer id){
         return noticeMapper.deleteNotice(id);
    }


    public Integer getTotalCount(Page2 page2) {
       
    	 return noticeMapper.getTotalCount(page2);
    }
    
	public List<NoticeEntity> getNoticesBycondtion(Page2 page2){
        return noticeMapper.getNoticesBycondtion(page2);
    }
	
	public NoticeEntity getNotice(Integer id){
		 return noticeMapper.getNotice(id);
		
	}
 

	
	
	
//	 @Override
//	    public List<NoticeEntity> selectNoticesList() {
//
//	        return noticeMapper.selectNoticesList();
//	    }
//
//	    @Override
//	    public int selectCount() {
//	        return noticeMapper.selectCount();
//	    }
//
//	    
//
//	    @Override
//	    public PageBean<NoticeEntity> findByPage(int currentPage) {
//	        HashMap<String,Object> map = new HashMap<String,Object>();
//	        PageBean<NoticeEntity> pageBean = new PageBean<NoticeEntity>();
//
//	        //封装当前页数
//	        pageBean.setCurrPage(currentPage);
//
//	        //每页显示的数据
//	        int pageSize=2;
//	        pageBean.setPageSize(pageSize);
//
//	        //封装总记录数
//	        int totalCount =noticeMapper.selectCount();
//	        pageBean.setTotalCount(totalCount);
//
//	        //封装总页数
//	        double tc = totalCount;
//	        Double num =Math.ceil(tc/pageSize);//向上取整
//	        pageBean.setTotalPage(num.intValue());
//
//	        map.put("start",(currentPage-1)*pageSize);
//	        map.put("size", pageBean.getPageSize());
//	        //封装每页显示的数据
//	        List<NoticeEntity> lists = noticeMapper.findByPage(map);
//	        pageBean.setLists(lists);
//
//	        return pageBean;
//	    }
//
//	
//	
//	
//	
////    @Override
////    public PageInfo<NoticeEntity> getNotices(Integer pageNum, Integer pageSize, NoticeEntity notice)
////    {
////    	// 引入pagerHelper分页插件
////		// 在查询之前只需要调用，传入页码及每页大小
////		PageHelper.startPage(pageNum, pageSize);
////		// startPage后面紧跟的这个查询就是一个分页查询
////        List<NoticeEntity> notices = noticeMapper.getNotices(notice);
////        System.out.println("查询成功");
////        // 使用PageInfo包装查询厚的结果，只需要将pageInfo交给页面就行了
////     	// 封装了详细的分页信息，包括有我们查询出来的数据,传入连续显示的页数
////        return new PageInfo<NoticeEntity>(notices);
////    }
    
   
    
}
