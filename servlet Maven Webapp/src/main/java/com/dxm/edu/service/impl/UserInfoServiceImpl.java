package com.dxm.edu.service.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Service;

import com.dxm.edu.common.model.ResultDTO;
import com.dxm.edu.entity.UserInfoEntity;
import com.dxm.edu.mapper.UserInfoMapper;
import com.dxm.edu.service.UserInfoService;



@Service
//业务逻辑层，负责对界面层传递过来的实体数据进行相关验证，如果验证通过，
//就调用数据访问层，进行相关的增删改查

public class UserInfoServiceImpl implements UserInfoService{
	    @Autowired
	    public UserInfoMapper userinfoMapper;
	 
	    //ok
	    @Override
	    public boolean insertUserInfo(UserInfoEntity userinfo)
	    {
	        boolean flag = false;
	        try
	        {
	            
	            SimpleDateFormat df2 = new SimpleDateFormat("yyMMddHHmmss");
	            String sdate = df2.format(new Date());
	            userinfo.setUserid(sdate);
	            userinfoMapper.insertSelective(userinfo);
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	    
	    
	    @Override
	    public  ArrayList<UserInfoEntity> getlogin(UserInfoEntity u) {
	        // TODO Auto-generated method stub
	    	
	        return  userinfoMapper.getWithLoginAndPassword(u);
	    }
	    
	 
	    @Override
	    public  UserInfoEntity getlogin1(String username, String password) {
	        
	    	
	    	// TODO Auto-generated method stub
	    	
	        return  userinfoMapper.getWithLoginAndPassword1(username, password);
	    }
	    
	    @Override
	    public UserInfoEntity getuserinfobyid(String userid) {
	        
	    	// TODO Auto-generated method stub
	    	
	        return  userinfoMapper.getuserinfobyid(userid);
	    }
	    
	    @Override
	    public UserInfoEntity gotoEditUserInfo(String id)
	    {
	        return userinfoMapper.selectByPrimaryKey(id);
	    }
	    
	    @Override
	    public boolean saveUserInfo(UserInfoEntity userinfo)
	    {
	        boolean flag = false;
	        try
	        {
	            
	            userinfoMapper.updateByPrimaryKeySelective(userinfo);
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	    //保存头像
	    
	    @Override
	    public boolean saveUserInfo2(UserInfoEntity userinfo)
	    {
	        boolean flag = false;
	        try
	        {
	            
	            userinfoMapper.updateByPrimaryKeySelective2(userinfo);
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	    @Override
	    public boolean saveUserInfo3(UserInfoEntity userinfo)
	    {
	        boolean flag = false;
	        try
	        {
	            
	            userinfoMapper.updateByPrimaryKeySelective3(userinfo);
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	    @Override
	    public boolean saveUserInfo4(UserInfoEntity userinfo)
	    {
	        boolean flag = false;
	        try
	        {
	            
	            userinfoMapper.updateByPrimaryKeySelective4(userinfo);
	            flag = true;
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return flag;
	    }
	    
	    public List<UserInfoEntity> getUserlist(){
	    	return  userinfoMapper.getUserInfos();
	    	
	    }
	    
	    
	    public void deleteUser(String id){
	    	
	    	
	    	userinfoMapper.deleteUser(id);
	    }
	    @Override
	    public UserInfoEntity goEditUser(String userid)
	    {
	        return userinfoMapper.selectByPrimaryKey(userid);
	    }
	    
	    
	    
}




/*	 @Override
		public 	ResultDTO CheckUserPWD(UserInfoEntity u){
	    	ResultDTO flag=new ResultDTO();
	    		if(u.getUsername().length()<2){
	    			flag.msg="用户名称少于2个字符";
	    			return flag;
	    		}
	    		if(u.getPassword().length()<6){
	    			flag.msg="用户密码少于6个字符";
	    			return flag;
	    		}
	    		UserInfoEntity user=userinfoMapper.getUserInfoByUserName(u.getUsername());
	    		if(user==null){
	    			flag.msg="没有："+user.getUsername()+"这个用户";
	    		return flag;
	    	}
	    	if(user.getPassword().equals(user.getPassword())==true){
	    		flag.flag=true;
	    	}else{
	    		flag.flag=false;
	    		flag.msg=user.getUsername()+"的密码不正确！";
	    	}
	    	return flag;
	    }*/
			
			
	

	   
	    //test
//	    @Override
//		public boolean loginUserinfo(String username, String password){
//			
//			 boolean flag = false;
//		        try
//		        {
//		            
//		            userinfoMapper.findUserByNameAndPwd(username,password);
//		            flag = true;
//		        }
//		        catch (Exception e)
//		        {
//		            // TODO Auto-generated catch block
//		            e.printStackTrace();
//		        }
//		        return flag;
//			
//			
//		}

	 
//	    @Override
//
//
///**
// * 验证登录
// * @param login_name
// * @param login_password
// * @param request
// * @return
// */
//public Map<String, Object> loginValid(String username,String password,HttpServletRequest request){
//    UserInfoEntity user=userinfoMapper.findUserByNameAndPwd (username, password);
//    Map<String, Object> map=new HashMap<>();
//    if(user==null){
//        map.put("status", "userNameOrPwdError");
//    }else if(user!=null&&!"".equals(user.getId())){
//        map.put("status", "ok");
//        map.put("user", user);
//        request.getSession().setAttribute("user", user);
//    }
//    return map;
//}
//}
	 
	 
	 
	 
	 
	 
	 
	 
//	 
////	 @Override
////
////		public void regist(UserInfoEntity uerinfo) {
////
////			// TODO Auto-generated method stub
////
////		 userinfoMapper. addnewUserInfo(uerinfo);
////
////		}
////
////	 
////
////		@Override
////
//		public UserInfoEntity getlogin(String username, String password) {
//
//			// TODO Auto-generated method stub
//
//			return userinfoMapper.findUserByNameAndPwd(username,password);
//
//		}}
//		
//	public 	ResultDTO getUserInfo(UserInfoEntity u){
//		ResultDTO flag=new  ResultDTO();
//		if(u.getUsername().length()<2){
//			flag.msg="用户名称少于2个字符";
//			return flag;
//		}
//		if(u.getPassword().length()<6){
//			flag.msg="用户密码少于6个字符";
//			return flag;
//		}
//		UserInfoEntity dbuser=userinfoMapper.getUserInfoByUserName(u.getUsername());
//		if(dbuser==null){
//			flag.msg="没有："+u.getUsername()+"这个用户";
//		return flag;
//	}
//	if(dbuser.getPassword().equals(u.getPassword())==true){
//		flag.flag=true;
//	}else{
//		flag.flag=false;
//		flag.msg=u.getUsername()+"的密码不正确！";
//	}
//	return flag;
//}
//	
//
//
//	public UserInfoEntity getUserInfoByUserName(String username) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public boolean addnewUserInfo(UserInfoEntity u) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//
//	
//
//
//	@Override
//	public boolean deleteUserInfo(String userinfoId) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//
//	@Override
//	public List<UserInfoEntity> getAllUserList() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public List<UserInfoEntity> getUserListByPage(int pageno, int pagesize) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public UserInfoEntity getUserInfoByUserName(UserInfoEntity userinfo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public UserInfoEntity editUserInfo(String userinfoId) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public void saveUserInfo(UserInfoEntity userinfo) {
//		// TODO Auto-generated method stub
//		
//	}
//

//	
//}
//







