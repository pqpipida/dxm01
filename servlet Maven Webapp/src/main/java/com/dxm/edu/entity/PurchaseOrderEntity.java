package com.dxm.edu.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PurchaseOrderEntity {
	  private int paid;
	  private String documentnumber;
	  private Date createdate;
	  private String coal;
	  private String quantity;
	  private String settlementmethod;
	  private String initiator;
	  private String state;
	  
	  public PurchaseOrderEntity() {};
	  public  PurchaseOrderEntity(int paid , String documentnumber, Date createdate,String coal, String quantity,
				String settlementmethod, String initiator, String state) {
			super();
			this.paid = paid;
			this.documentnumber = documentnumber;
			this.createdate = createdate;
			this.coal = coal;
			this.quantity = quantity;
			this.settlementmethod = settlementmethod;
			this.initiator = initiator;
			this.state = state;
		}
	  
	  public int getPaid() {
		return paid;
	}
	public void setPaid(int paid) {
		this.paid = paid;
	}
	public String getDocumentnumber() {
		return documentnumber;
	}
	public void setDocumentnumber(String documentnumber) {
		this.documentnumber = documentnumber;
	}
	
	@JsonFormat(pattern="yyyy-MM-dd")
	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getCoal() {
		return coal;
	}
	public void setCoal(String coal) {
		this.coal = coal;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getSettlementmethod() {
		return settlementmethod;
	}
	public void setSettlementmethod(String settlementmethod) {
		this.settlementmethod = settlementmethod;
	}
	public String getInitiator() {
		return initiator;
	}
	public void setInitiator(String initiator) {
		this.initiator = initiator;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
	
	
	
	
}
