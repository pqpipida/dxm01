package com.dxm.edu.entity;

import java.sql.Date;

public class RecordofApprovalEntity {

	  private Integer id;
	  private String operator;
	  private String company;
	  private String  operation;
	  private String opinion;
	  private  Date time;
	  private String  num;
	  public RecordofApprovalEntity() {};
	  public RecordofApprovalEntity(Integer id,String operator,String company,
			  String  operation, String opinion,Date time ,String  num) {
		  
		  super();
		  this.id=id;
		  this.operator=operator;
		  this. company= company;
		  this. operation= operation;
		  this. opinion =opinion;
		  this. time =time;
		  this.num= num;
	  }
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id ;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator == null ? null : operator .trim();
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation == null ? null :  operation.trim();
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion == null ? null : opinion .trim();
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num == null ? null : num  .trim();
	}

	  
	  
	  
	  
}
