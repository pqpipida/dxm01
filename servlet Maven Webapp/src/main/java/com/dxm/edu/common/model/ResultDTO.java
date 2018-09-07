package com.dxm.edu.common.model;

public class ResultDTO {
	
	public Boolean flag;
	public String msg;
	public Object data;
	
	public ResultDTO() { }
	
	public ResultDTO(Object data, Boolean flag, String msg) {
		this.flag = flag;
		this.msg = msg;
		this.data = data;
	}
	
	public Boolean getFlag() {
		return flag;
	}
	public void setFlag(Boolean flag) {
		this.flag = flag;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
}
