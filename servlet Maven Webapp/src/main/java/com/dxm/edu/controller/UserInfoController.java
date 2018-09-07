package com.dxm.edu.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;










import org.apache.ibatis.type.TypeReference;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.dxm.edu.common.model.ResultDTO;
import com.dxm.edu.entity.UserInfoEntity;
import com.dxm.edu.service.UserInfoService;

import org.springframework.stereotype.Controller;


@Controller("userinfo")


public class UserInfoController {

		@Autowired
		private  UserInfoService userinfoService;
	
		/////去登录页
		@RequestMapping(value = "gotodclogin")
		public String userlogin() {
			//return "userlogin";
			return "login1";
		}
		@RequestMapping(value = "gotoaboutUS")
		public String aboutUS() {
			//return "userlogin";
			return "aboutUS";
		}
		///主页去登录/注册
		@RequestMapping(value = "login1")
		public String userlogin1() {
			//return "userlogin";
			return "login1";
		}
		@RequestMapping(value = "dcregister")
		public String dcregister1() {
			//return "userlogin";
			return "dcregister";
		}
		@RequestMapping(value = "index1")
		public String index1() {
			//return "userlogin";
			return "index1";
		}
		
//		@RequestMapping(value = "index2")
//		public String index2() {
//			//return "userlogin";
//			return "index2";
//		}
		
		
		@RequestMapping(value = "Procurement_PurchasingAuditOperation")
		public String Procurement_PurchasingAuditOperation() {
		
			return "Procurement_PurchasingAuditOperation";
		}
		
		@RequestMapping(value = "Procurement_PricePurchaseAmendment")
		public String Procurement_PricePurchaseAmendment() {
		
			return "Procurement_PricePurchaseAmendment";
		}
		@RequestMapping(value = "Procurement_PricePurchaseAuditThrough")
		public String Procurement_PricePurchaseAuditThrough() {
		
			return "Procurement_PricePurchaseAuditThrough";
		}
		@RequestMapping(value = "Procurement_PricePurchaseAudit")
		public String Procurement_PricePurchaseAudit() {
		
			return "Procurement_PricePurchaseAudit";
		}
		@RequestMapping(value = "Procurement_DocumentAuditRecord")
		public String Procurement_DocumentAuditRecord() {
		
			return "Procurement_DocumentAuditRecord";
		}
		
		@RequestMapping(value = "extra_lock")
		public String extra_lock() {
			//return "userlogin";
			return "extra_lock";
		}
		@RequestMapping(value = "login2")
		public String locklogin() {
			//return "userlogin";
			return "login1";
		}
//		@RequestMapping(value = "extra_profile")
//		public String extra_profile() {
//			//return "userlogin";
//			
//			return "extra_profile";
//		}
		
		@RequestMapping(value = "/addAvatar")

		public String addUser(HttpServletRequest request ,UserInfoEntity userinfo,MultipartFile pictureFile,HttpSession session) throws Exception{


			//使用UUID给图片重命名，并去掉四个“-”

			String name = UUID.randomUUID().toString().replaceAll("-", "");

			//获取文件的扩展名

			String ext = FilenameUtils.getExtension(pictureFile.getOriginalFilename());

			//设置图片上传路径

			String url = request.getSession().getServletContext().getRealPath("/upload");

			System.out.println(url);
		

			//以绝对路径保存重名命后的图片

			//pictureFile.transferTo(new File(url+"/"+name + "." + ext));
			pictureFile.transferTo(new File("C:/Users/dd/Desktop/10-邓向敏-2015214210/src/main/webapp/upload"+"/"+name + "." + ext));
			

			//把图片存储路径保存到数据库

			userinfo.setImageurl("upload/"+name + "." + ext);

			userinfoService.saveUserInfo2(userinfo);

			//图片回显
			String userid=userinfo.getUserid();
			 UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			 session.setAttribute("user",user); 
			//return "redirect:/getuserinfobyid";
			 return "profile";
		
		}
		@RequestMapping(value = "checkoldpassword" )

		public  void checkoldpassword(HttpServletResponse response ,HttpServletRequest request ,String oldpassword,String userid,HttpSession session) throws Exception{
			
		  
			UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			String password =user.getPassword();
			System.out.print(password);
			if(oldpassword.equals(password)){
			  String f="yes";
	
				response.getWriter().write(f);
			
			}else{

				response.getWriter().write("no");
				
			}

//			return "profile";
		}
		@RequestMapping(value = "checkotheroldpassword" )

		public  void checkotheroldpassword(HttpServletResponse response ,HttpServletRequest request ,String oldpassword,String userid,HttpSession session) throws Exception{
			
		  
			UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			String password =user.getPassword();
			System.out.print(password);
			if(oldpassword.equals(password)){
			  String f="yes";
	
				response.getWriter().write(f);
			
			}else{

				response.getWriter().write("no");
				
			}

//			return "profile";
		}
		
		@RequestMapping(value = "changeotheruserpassword" )

		public  void checkeditpassword2(HttpServletResponse response ,HttpServletRequest request ,String oldpassword,String password,String userid) throws Exception{
			
		  
			UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			String pw=user.getPassword();
			System.out.print(password);
			if(!oldpassword.equals(pw)){
				response.getWriter().write("notfound");	
				
			}else{
				//更新用户密码

				UserInfoEntity userinfo= new UserInfoEntity();
				userinfo.setPassword(password);
				userinfo.setUserid(userid);

				userinfoService.saveUserInfo3(userinfo);
				response.getWriter().write("success");

			
			}
//			return "profile";
		}
		
		
		
		@RequestMapping(value = "changepassword" ,method=RequestMethod.POST)


		public void changepassword(HttpServletResponse response ,HttpServletRequest request ,String oldpassword,String password,String userid,HttpSession session) throws Exception{
		
			//判断旧密码输入是否正确
			UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			String pw=user.getPassword();
			
			if(!oldpassword.equals(pw)){
				response.getWriter().write("notfound");	
				
			}else{
			
			//更新用户密码

			UserInfoEntity userinfo= new UserInfoEntity();
			userinfo.setPassword(password);
			userinfo.setUserid(userid);

			userinfoService.saveUserInfo3(userinfo);

		    //获取用户所有信息
			 userid=userinfo.getUserid();
			 UserInfoEntity user2=userinfoService.getuserinfobyid(userid);
			 session.setAttribute("user",user2); 
			 
			 //结果传回ajax
			 
			response.getWriter().write("success");
			}
			//return "profile";
		}
		
		
		
		
		////去首页
		@RequestMapping(value = "dcindex")
		public String gotodcindex() {
				return "dcindex";
			}
	
		///////注册页
        @RequestMapping(value = "gotodcRegister")
        public String gotodcregister() {
        	//return "dcregister";
				return "register1";
			}
        
        /////保存注册信息至数据库
        @RequestMapping(value = "/gosaveRegister-1")
        public String gotosavedcregister1( HttpSession session,Model model,@ModelAttribute UserInfoEntity userinfo){
        	session.setAttribute("user",userinfo);
				boolean flag = userinfoService.insertUserInfo(userinfo);
				if(flag) {
					System.out.println("success");
					return "init.do";
				} else {
					//return "dcregister";
					return "register1";
				}
			}
        @RequestMapping(value = "/gosaveRegister-2")
        public String savedcregister2(HttpSession session,Model model,@ModelAttribute  UserInfoEntity userinfo){
        	session.setAttribute("user",userinfo);
				boolean flag = userinfoService.insertUserInfo(userinfo);
				if(flag) {
					System.out.println("success");
					return "init.do";
				} else {
					//return "dcregister";
					return "register1";
				}
			}
			///////登录数据库验证
//        @RequestMapping(value="/getlogin")
//        public String getlogin(HttpSession session,Model model,@ModelAttribute UserInfoEntity user){
//        	 List<UserInfoEntity> list=new ArrayList<UserInfoEntity>();
//        	 
//        	UserInfoEntity u=new UserInfoEntity();
//           u.setUsername(user.getUsername());
//           list= userinfoService.getlogin(u);
//           u.setPassword(user.getPassword());
//           list= userinfoService.getlogin(u);
//           session.setAttribute("user",u);
//          
//        		  if(list.size()==0)
//        	            model.addAttribute("result","0");//用户名密码出错
//        	        else{
//        	            u.setPassword(user.getPassword());
//        	            list=userinfoService.getlogin(u);
//        	            if(list.size()==0)
//        	                model.addAttribute("result","1");//用户名密码出错
//        	            else {
//        	                u=list.get(0);
//        	               //session.setAttribute("user",u);
//        	               
//        	                //将用户保存在session里面
//        	                model.addAttribute("result","2");//登录成功
//        	                
//        	            }
//        	       }
//        		  return "login1";
//        		  //return "userlogin";
//              }
        
    	///////锁屏页登录数据库验证
        @RequestMapping(value="/getlocklogin")
       
        public ModelAndView getlocklogin(String username,String password,ModelAndView mv,HttpSession session){
        	 UserInfoEntity user=userinfoService.getlogin1(username, password);
             if(user!=null){
             	System.out.println("登陆成功");
                 //登录成功，将user对象设置到HttpSession作用范围域中
                 session.setAttribute("user", user);
                 //转发到main请求
                 mv.setView(new RedirectView("init.do"));
                
             }else {
                 //登录失败，设置失败信息，并调转到登录页面
                 
                 mv.addObject("message","登录名和密码错误，请重新输入");
                 mv.setViewName("login1");
             }
             return mv;
        }
              

    	@RequestMapping(value = "/gotoEdit")
    	public String gotoEdit(Model model, String id) {
    		
//    		UserInfoEntity userinfoEntity = userinfoService.gotoEditUserInfo(id);
//    		model.addAttribute("user",userinfoEntity);
    		return "profile";
    	}
        
    	
        //测试
    	
        @RequestMapping(value="/userstable")
        // @ResponseBody会将集合数据转换json格式返回客户端
        @ResponseBody
        public Object getuserstable( ) {
        	
        	List<UserInfoEntity> list=new ArrayList<UserInfoEntity>();
        	list=userinfoService.getUserlist();
        	return list;
        }

        @RequestMapping("deleteUser")
	    public void deleteNotice(HttpServletResponse response,String userid,String state) throws IOException {
        	 System.out.println(userid+state);
        	
        	//判断是否为在线用户
        	 if(state.equals("1")){
        	   System.out.println("在线用户未开通删除功能");
        	   response.getWriter().write("在线用户未开通删除功能");
        	   
           }else{
        	   
        	userinfoService.deleteUser(userid);
	         
        	response.getWriter().write("删除成功,请刷新!");	
        	}
	    }
        @RequestMapping("selecttheuser")
        @ResponseBody
	    public Object selecttheuser(HttpServletResponse response,String userid) throws IOException {
         System.out.println(userid);
        	
        UserInfoEntity userinfo=userinfoService.getuserinfobyid(userid);
	         
        	//response.getWriter().write(userinfo);	
        return userinfo;
	    }
        @RequestMapping(value = "/goEditUser")
    	public String goEditUser(Model model, String userid) {
    		UserInfoEntity user = userinfoService.goEditUser(userid);
    		model.addAttribute("user",user);
    		return "editUser";
    	}
        
        @RequestMapping(value = "/addUser")
        public void addUser(HttpServletResponse response,HttpServletRequest request, UserInfoEntity userinfo) throws IOException{
				boolean flag = userinfoService.insertUserInfo(userinfo);
				if(flag) {
					System.out.println("success");
					 response.getWriter().write("添加成功");
				} else {
					
					 response.getWriter().write("添加失败");
				}
			}
        @RequestMapping(value = "/editUserInfo")
        public void editUserInfo(HttpServletResponse response,HttpServletRequest request, UserInfoEntity userinfo) throws IOException{
        	boolean flag = userinfoService.saveUserInfo(userinfo);
        	if(flag) { response.getWriter().write("修改成功");
        	
        	} else {
				
				 response.getWriter().write("修改失败");
			}
			
			}
        
        
		@RequestMapping(value = "/saveUserInfo" )
    	public String saveUserInfo( HttpSession session,Model model,@ModelAttribute   UserInfoEntity userinfo) {
    	
    		userinfoService.saveUserInfo(userinfo);

			//重定向到查询所有用户的Controller，测试图片回显
			String userid=userinfo.getUserid();
			 UserInfoEntity user=userinfoService.getuserinfobyid(userid);
			 session.setAttribute("user",user); 
    		
    		// mv.setView(new RedirectView("init.do"));
    		//return mv;
			 return "profile";
    	}
//    	@RequestMapping(value = "/saveUserInfo" )
//    	public String saveUserInfo( HttpSession session,Model model,@ModelAttribute   UserInfoEntity userinfo) {
//    	
//    		userinfoService.saveUserInfo(userinfo);
//    		session.setAttribute("user",userinfo);
//    		return "init.do";
//    	}
//    	@RequestMapping(value= "/saveUserInfo" , method=RequestMethod.POST)
//    	public String saveUserInfo(UserInfoEntity userinfo) {
//    		userinfoService.saveUserInfo(userinfo);
//    		
//    		return "index2";
//    	}
//    	
    	
    	
    	
        @RequestMapping(value="/getlogin")
        public ModelAndView getlogin(String username,String password,ModelAndView mv,HttpSession session){
            UserInfoEntity user=userinfoService.getlogin1(username, password);
            if(user!=null){
            	String state="1";
            	user.setState(state);
            	System.out.println(state);
            	userinfoService.saveUserInfo4(user);
            	
            	System.out.println("登陆成功");
                //登录成功，将user对象设置到HttpSession作用范围域中
                session.setAttribute("user", user);
                session.setAttribute("state", state);
                //转发到main请求
                
                  mv.setView(new RedirectView("init.do"));
            }else {
                //登录失败，设置失败信息，并调转到登录页面
                
                mv.addObject("message","登录名和密码错误，请重新输入");
                mv.setViewName("login1");
            }
            return mv;
        }
        
        @RequestMapping(value="/loginout")
        /** 注销 */
        public String loginout( SessionStatus sessionStatus,HttpSession session,HttpServletRequest request ) throws Exception {
        	UserInfoEntity user=null;
       		user =(UserInfoEntity) session.getAttribute("user");
       	
       		//改变在线状态
        	String state="0";
        	user.setState(state);
        	System.out.println(state);
        	userinfoService.saveUserInfo4(user);
        	
        	  try {
                  if (session != null)
                      session.removeAttribute("user");
                  session.invalidate();
              } catch (Exception e) {

              }
//        	//清空session
//        	//sessionStatus中的setComplete方法可以将session中的内容全部清空
//        	sessionStatus.setComplete();
//        	
//        	//查看所有session里面的内容
//        	HttpSession   session1   =   request.getSession();
//        	//获取session中所有的键值 
//        	Enumeration   enumeration   =   session1.getAttributeNames();  
//        	//遍历enumeration中的 
//        	while (enumeration.hasMoreElements()){   
//        	//获取session键值   
//        	String   user1       =      enumeration.nextElement().toString();  
//        	//根据键值取session中的值    
//        	Object   value       =       request.getSession().getAttribute(user1);  
//        	//打印结果
//        	
//        	System.out.println("<B>" + user1 +  "</B>       =       "       +       value.toString()       +       "<br>/n"); 
//        	
//        	}
       	
       	
           return "index1";
        }
        
        
        
        
        
			
//			//test
//			@RequestMapping(value = "/gologin")
//			public String gologin(String name,String password,Model model) {
//				System.out.println("用户登录ing");
//				boolean flag = userinfoService.loginUserinfo(name,password);
//				
//				if(flag) {
//					System.out.println("success");
//					return "dcindex";
//				} else {
//					
//					return "userlogin";
//				
//			
//			}
//
//		}
//		
//		    
} 
