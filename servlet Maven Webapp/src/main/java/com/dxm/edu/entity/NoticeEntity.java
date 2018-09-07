package com.dxm.edu.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class NoticeEntity {
	private String noticeid;
	
	private String title;
	private Date time;
	private String content;

	public NoticeEntity() {};
	    
		public NoticeEntity(String noticeid, String title, Date time,String content) {
			super();
			this.noticeid=noticeid;
			this.title = title;
			this.time = time;
			this.setContent(content);
		}
		public String getNoticeid() {
			return noticeid;
		}

		public void setNoticeid(String noticeid) {
			this.noticeid = noticeid;
		}
   
		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}
		@JsonFormat(pattern="yyyy-MM-dd")
		public Date getTime() {
			return time;
		}

		public void setTime(Date time) {
			this.time = time;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

	
}
