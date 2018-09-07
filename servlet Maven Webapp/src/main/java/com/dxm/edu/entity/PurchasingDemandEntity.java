package com.dxm.edu.entity;

import java.util.Date;

public class PurchasingDemandEntity {
	private String purchasingdemandid;
	
	private Date deadline;
	
	private String applicationunit;
	
	private String documentnumber;
	
	private String applicant;
	
	private String issuer;
	
	private Date applicationdate;
	
	private Date deliverytime1;
	
	private Date deliverytime2;
	
	private String  varietyofcoal1;
	
	private String  varietyofcoal2;
	
	private String  purchasequantity;
	
	private String  typeofshipping;
	
	private String placeofdelivery;
	
	private String  settlementmethod;
	
	private String  acceptancemethod;
	
	private String priceceiling;
	
	private String floorprice;
	
	private String limitprice;
	
	private String settlementpaymentmethod;
	
	private String   ifpricemarginpayment;
	
	private String pricemarginpayment;
	
	private String   ifperformancebondpayment;
	
	private String performancebondpayment;
	
	 private String receivedlowbaseheat;
	 
	 private String star;
	 
	 private String m;
	 
	 private String aar;
	 
	 private String varmin;
	 
	 private String varmax;
	 
	 private String mad;
	 
	 private String stad;
	 
	 private String vadmin;
	 
	 private String vadmax;
	 
	 private String highestcalorificvalue;
	 
	 private String std;
	 
	 private String dryashfreevolatilesmin;
	 
	 private String dryashfreevolatilesmax;
	 
	 private String mm;
	 
	 private String st;
	 
	 private String hgi;
	 
	 private String remarks;
	 private String state;
	 
	 public PurchasingDemandEntity() {};

public PurchasingDemandEntity(String purchasingdemandid, Date deadline, String applicationunit, 
		String documentnumber,String applicant,String issuer,Date applicationdate,Date deliverytime1,Date deliverytime2,
		String  varietyofcoal1,String  varietyofcoal2,String purchasequantity,String typeofshipping ,String placeofdelivery,
		String settlementmethod,String acceptancemethod,String priceceiling,String floorprice, String limitprice,
		 String settlementpaymentmethod, String ifpricemarginpayment, String pricemarginpayment,String ifperformancebondpayment,
		 String performancebondpayment,String receivedlowbaseheat, String star, 
		String m,String aar,String varmin,String varmax,String mad,String stad,String vadmin,String vadmax,
		String highestcalorificvalue,String std,String dryashfreevolatilesmin,String dryashfreevolatilesmax,
		String mm,String st,String hgi,String remarks,String state) {
	super();
	this.purchasingdemandid = purchasingdemandid;

	this.deadline = deadline;

	this.applicationunit = applicationunit;

	this.documentnumber = documentnumber;

	this.applicant = applicant;

	this.issuer = issuer;

	this.applicationdate = applicationdate;

	this.deliverytime1 = deliverytime1;

	this.deliverytime2 = deliverytime2;

	this.varietyofcoal1 = varietyofcoal1;

	this.varietyofcoal2 = varietyofcoal2;

	this.purchasequantity = purchasequantity;

	this.typeofshipping = typeofshipping;

	this.placeofdelivery = placeofdelivery;

	this.settlementmethod = settlementmethod;

	this.acceptancemethod = acceptancemethod;

	this.priceceiling = priceceiling;

	this.floorprice = floorprice;

	this.limitprice = limitprice;

	this.settlementpaymentmethod = settlementpaymentmethod;

	this.ifpricemarginpayment = ifpricemarginpayment;

	this.pricemarginpayment = pricemarginpayment;

	this.ifperformancebondpayment = ifperformancebondpayment;

	this.performancebondpayment = performancebondpayment;

	this.receivedlowbaseheat = receivedlowbaseheat;
	
	this.star = star;
	
	this.m= m;
	
	this.aar= aar;
	
	this.varmin=varmin ;
	
	this.varmax=varmax ;
	
	this.mad= mad;
	
	this.stad= stad;
	
	this.vadmin=vadmin;
	
	this.vadmax=vadmax ;
	
	this.highestcalorificvalue=highestcalorificvalue ;
	
	this.std=std ;
	
	this.dryashfreevolatilesmin=dryashfreevolatilesmin ;
	
	this.dryashfreevolatilesmax= dryashfreevolatilesmax;
	
	this.mm= mm;
	
	this.st= st;
	
	this.hgi= hgi;
	
	this.remarks=remarks;
	this.state=state;
	}

	public String getPurchasingdemandid() {
		return purchasingdemandid;
	}
	
	public void setPurchasingdemandid(String purchasingdemandid) {
		this.purchasingdemandid = purchasingdemandid == null ? null : purchasingdemandid.trim();
	}
	
	public Date getDeadline() {
	return deadline;
	}
	
	public void setDeadline(Date deadline) {
	this.deadline = deadline;
	}
	
	public String getApplicationunit() {
	return applicationunit;
	}
	
	public void setApplicationunit(String applicationunit) {
	this.applicationunit = applicationunit == null ? null : applicationunit.trim();
	}
	
	public String getDocumentnumber() {
	return documentnumber;
	}
	
	public void setDocumentnumber(String documentnumber) {
	this.documentnumber = documentnumber== null ? null : documentnumber.trim();
	}
	
	public String getApplicant() {
	return applicant;
	}
	
	public void setApplicant(String applicant) {
	this.applicant = applicant == null ? null : applicant.trim();
	}
	
	public String getIssuer() {
	return issuer;
	}
	
	public void setIssuer(String issuer) {
	this.issuer = issuer == null ? null : issuer.trim();
	}
	
	public Date getApplicationdate() {
	return applicationdate;
	}
	
	public void setApplicationdate(Date applicationdate) {
	this.applicationdate = applicationdate;
	}
	
	public Date getDeliverytime1() {
	return deliverytime1;
	}
	
	public void setDeliverytime1(Date deliverytime1) {
	this.deliverytime1 = deliverytime1 ;
	}
	
	public Date getDeliverytime2() {
	return deliverytime2;
	}
	
	public void setDeliverytime2(Date deliverytime2) {
	this.deliverytime2 = deliverytime2;
	}
	
	public String  getVarietyofcoal1() {
	return varietyofcoal1;
	}
	
	public void setVarietyofcoal1(String  varietyofcoal1) {
	this.varietyofcoal1 = varietyofcoal1 == null ? null : varietyofcoal1.trim();
	}
	
	public String  getVarietyofcoal2() {
	return varietyofcoal2;
	}
	
	public void setVarietyofcoal2(String  varietyofcoal2) {
	this.varietyofcoal2 = varietyofcoal2 == null ? null : varietyofcoal2.trim();
	}
	
	public String getPurchasequantity() {
	return purchasequantity;
	}
	
	public void setPurchasequantity(String purchasequantity) {
	this.purchasequantity = purchasequantity == null ? null : purchasequantity .trim();
	}
	
	public String getTypeofshipping() {
	return typeofshipping;
	}
	
	public void setTypeofshipping(String typeofshipping) {
	this.typeofshipping = typeofshipping == null ? null : typeofshipping.trim();
	}
	
	public String getPlaceofdelivery() {
	return placeofdelivery;
	}
	
	public void setPlaceofdelivery(String placeofdelivery) {
	this.placeofdelivery = placeofdelivery == null ? null : placeofdelivery.trim();
	}
	
	public String getSettlementmethod() {
	return settlementmethod;
	}
	
	public void setSettlementmethod(String settlementmethod) {
	this.settlementmethod = settlementmethod== null ? null : settlementmethod .trim(); 
	}
	
	public String getAcceptancemethod() {
	return acceptancemethod;
	}
	
	public void setAcceptancemethod(String acceptancemethod) {
	this.acceptancemethod = acceptancemethod== null ? null : acceptancemethod .trim();
	}
	
	public String getPriceceiling() {
	return priceceiling;
	}
	
	public void setPriceceiling(String priceceiling) {
	this.priceceiling = priceceiling == null ? null : priceceiling .trim();
	}
	
	public String getFloorprice() {
	return floorprice;
	}
	
	public void setFloorprice(String floorprice) {
	this.floorprice = floorprice == null ? null : floorprice.trim();
	}
	
	public String getLimitprice() {
	return limitprice;
	}
	
	public void setLimitprice(String limitprice) {
	this.limitprice = limitprice == null ? null : limitprice.trim();
	}
	
	public String getSettlementpaymentmethod() {
	return settlementpaymentmethod;
	}
	
	public void setSettlementpaymentmethod(String settlementpaymentmethod) {
	this.settlementpaymentmethod = settlementpaymentmethod == null ? null : settlementpaymentmethod.trim();
	}
	
	public String getIfpricemarginpayment() {
	return ifpricemarginpayment;
	}
	
	public void setIfpricemarginpayment(String ifpricemarginpayment) {
	this.ifpricemarginpayment = ifpricemarginpayment== null ? null :ifpricemarginpayment.trim() ; ;
	}
	
	public String getPricemarginpayment() {
	return pricemarginpayment;
	}
	
	public void setPricemarginpayment(String pricemarginpayment) {
	this.pricemarginpayment = pricemarginpayment == null ? null : pricemarginpayment.trim();
	}
	
	public String getIfperformancebondpayment() {
	return ifperformancebondpayment;
	}
	
	public void setIfperformancebondpayment(String ifperformancebondpayment) {
	this.ifperformancebondpayment = ifperformancebondpayment == null ? null :ifperformancebondpayment.trim() ;
	}
	
	public String getPerformancebondpayment() {
	return performancebondpayment;
	}
	
	public void setPerformancebondpayment(String performancebondpayment) {
	this.performancebondpayment = performancebondpayment == null ? null : performancebondpayment.trim();
	}
	
	public String getReceivedlowbaseheat() {
	return receivedlowbaseheat;
	}
	public void setReceivedlowbaseheat(String receivedlowbaseheat) {
	this.receivedlowbaseheat = receivedlowbaseheat == null ? null : receivedlowbaseheat.trim();
	}
	public String getStar() {
	return star;
	}
	public void setStar(String star) {
	this.star = star == null ? null : star.trim();
	}
	public String getM() {
	return m;
	}
	public void setM(String m) {
	this.m = m == null ? null : m.trim();
	}
	public String getAar() {
	return aar;
	}
	public void setAar(String aar) {
	this.aar = aar == null ? null : aar.trim();
	}
	public String getVarmin() {
	return varmin;
	}
	public void setVarmin(String varmin) {
	this.varmin = varmin == null ? null : varmin.trim();
	}
	public String getVarmax() {
	return varmax;
	}
	public void setVarmax(String varmax) {
	this.varmax = varmax == null ? null : varmax .trim();
	}
	public String getMad() {
	return mad;
	}
	public void setMad(String mad) {
	this.mad = mad == null ? null : mad.trim();
	}
	public String getStad() {
	return stad;
	}
	public void setStad(String stad) {
	this.stad = stad == null ? null : stad.trim();
	}
	
	public String getVadmin() {
	return vadmin;
	}
	
	public void setVadmin(String vadmin) {
	this.vadmin = vadmin == null ? null : vadmin.trim();
	}
	
	public String getVadmax() {
	return vadmax;
	}
	
	public void setVadmax(String vadmax) {
	this.vadmax = vadmax == null ? null : vadmax.trim();
	}
	
	public String getHighestcalorificvalue() {
	return highestcalorificvalue;
	}
	public void setHighestcalorificvalue(String highestcalorificvalue) {
	this.highestcalorificvalue = highestcalorificvalue == null ? null : highestcalorificvalue.trim();
	}
	public String getStd() {
	return std;
	}
	public void setStd(String std) {
	this.std = std == null ? null : std.trim();
	}
	public String getDryashfreevolatilesmin() {
	return dryashfreevolatilesmin;
	}
	public void setDryashfreevolatilesmin(String dryashfreevolatilesmin) {
	this.dryashfreevolatilesmin = dryashfreevolatilesmin == null ? null :dryashfreevolatilesmin.trim();
	}
	public String getDryashfreevolatilesmax() {
	return dryashfreevolatilesmax;
	}
	public void setDryashfreevolatilesmax(String dryashfreevolatilesmax) {
	this.dryashfreevolatilesmax = dryashfreevolatilesmax == null ? null : dryashfreevolatilesmax.trim();
	}
	public String getMm() {
	return mm;
	}
	public void setMm(String mm) {
	this.mm = mm == null ? null : mm.trim();
	}
	public String getSt() {
	return st;
	}
	public void setSt(String st) {
	this.st = st == null ? null : st.trim();
	}
	public String getHgi() {
	return hgi;
	}
	public void setHgi(String hgi) {
	this.hgi = hgi == null ? null :  hgi .trim();
	}
	public String getRemarks() {
	return remarks;
	}
	public void setRemarks(String remarks) {
	this.remarks = remarks == null ? null : remarks.trim();
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state== null ? null : state.trim();
	}

	
	
}
