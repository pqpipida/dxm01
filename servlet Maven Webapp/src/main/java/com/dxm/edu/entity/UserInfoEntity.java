package com.dxm.edu.entity;

import java.util.Date;

public class UserInfoEntity {
	private String userid;
	
	private String username;
	private String password;
	private String realname;
	private String department;
	private String role;
	private String email;
	private String tel;
	private String affiliatedcompany;
	private String companyprofile;
	private String companywebsite;
	private String imageurl;
	private String branchoffice;
	private String companyleader;
	private String companyemail;
	private String companytel;
	private String companyadress;
	private String state;
	
	  public UserInfoEntity() {};
	    
		public UserInfoEntity(String userid, String username, String password, String realname,
				String department, String role, String email,String tel,String affiliatedcompany,String companyprofile,String companywebsite,
				String imageurl,String branchoffice, String companyleader, String companyemail, String companytel,String companyadress)
				 {
			super();
			this.userid=userid;
			this.username = username;
			this.password = password;
			this.realname=realname;
			this.department = department;
			this.role = role;
			this.email=email;
			this.tel=tel;
			this.affiliatedcompany=affiliatedcompany;
			this.companyprofile=companyprofile;
			this.companywebsite=companywebsite;
			this.imageurl=imageurl;
			this.branchoffice=branchoffice;
			this.companyleader=companyleader;
			this.companyemail=companyemail;
			this.companytel =companytel;
			this.companyadress=companyadress;
		}
   
    public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
			
		this.userid =userid == null ? null : userid.trim();
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		
		this.username =username == null ? null : username.trim();
		
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password =password == null ? null : password.trim();
		  
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
	
		this.department =department == null ? null : department.trim();
		  
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
	
		this.role = role;
		   
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email== null ? null : email.trim();
	}

	public void getAttribute(String string) {
		// TODO Auto-generated method stub
		
	}

	public String getCompanyprofile() {
		return companyprofile;
	}

	public void setCompanyprofile(String companyprofile) {
		this.companyprofile = companyprofile== null ? null : companyprofile.trim();
	}

	public String getAffiliatedcompany() {
		return affiliatedcompany;
	}

	public void setAffiliatedcompany(String affiliatedcompany) {
		this.affiliatedcompany = affiliatedcompany== null ? null : affiliatedcompany.trim();
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCompanywebsite() {
		return companywebsite;
	}

	public void setCompanywebsite(String companywebsite) {
		this.companywebsite = companywebsite== null ? null : companywebsite.trim();
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname =realname== null ? null : realname.trim();
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl== null ? null : imageurl.trim();
	}

	public String getBranchoffice() {
		return branchoffice;
	}

	public void setBranchoffice(String branchoffice) {
		this.branchoffice = branchoffice== null ? null : branchoffice.trim();
	}

	public String getCompanyleader() {
		return companyleader;
	}

	public void setCompanyleader(String companyleader) {
		this.companyleader = companyleader== null ? null : companyleader.trim();
	}

	public String getCompanyemail() {
		return companyemail;
	}

	public void setCompanyemail(String companyemail) {
		this.companyemail = companyemail== null ? null : companyemail.trim();
	}

	public String getCompanytel() {
		return companytel;
	}

	public void setCompanytel(String companytel) {
		this.companytel = companytel== null ? null : companytel.trim();
	}

	public String getCompanyadress() {
		return companyadress;
	}

	public void setCompanyadress(String companyadress) {
		this.companyadress = companyadress== null ? null : companyadress.trim();
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state== null ? null : state.trim();
	}

	



	

	
}
