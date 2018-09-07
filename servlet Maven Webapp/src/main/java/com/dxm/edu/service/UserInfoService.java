package com.dxm.edu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.PageInfo;
import com.dxm.edu.common.model.ResultDTO;
import com.dxm.edu.entity.UserInfoEntity;

//业务逻辑层需要做：增删改查
public interface UserInfoService {
	//已经实现
	public boolean insertUserInfo(UserInfoEntity userinfo);
	
	public ArrayList<UserInfoEntity> getlogin(UserInfoEntity u);
	
	public UserInfoEntity gotoEditUserInfo(String id);

	public boolean saveUserInfo(UserInfoEntity userinfo);
	
	public UserInfoEntity getlogin1(String username, String password);
    
	//上传头像保存
	public boolean saveUserInfo2(UserInfoEntity userinfo);

	
	public UserInfoEntity getuserinfobyid(String userid);

	public boolean  saveUserInfo3(UserInfoEntity userinfo);

	public List<UserInfoEntity> getUserlist();

	public boolean saveUserInfo4(UserInfoEntity user);

	public void deleteUser(String id);

	public UserInfoEntity goEditUser(String userid);

	


	
}
