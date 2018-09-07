package com.dxm.edu.mapper;

import java.util.ArrayList;
import java.util.List;










import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.dxm.edu.entity.UserInfoEntity;

public interface UserInfoMapper {
	
	//已经实现
	  int insertSelective(UserInfoEntity record);
	  
	  ArrayList<UserInfoEntity> getWithLoginAndPassword(UserInfoEntity u);
	  
	  UserInfoEntity selectByPrimaryKey(String id);
		
	  void updateByPrimaryKeySelective(UserInfoEntity userinfo);
	  
	  //更新头像
	  void updateByPrimaryKeySelective2(UserInfoEntity userinfo); 
	  
	  UserInfoEntity getWithLoginAndPassword1(@Param("username")String username,@Param("password") String password);

	UserInfoEntity getuserinfobyid(@Param("userid")String userid);

	void updateByPrimaryKeySelective3(UserInfoEntity userinfo);

	List<UserInfoEntity> getUserInfos();

	void updateByPrimaryKeySelective4(UserInfoEntity userinfo);

	void deleteUser(String id);
	  
	
	
}