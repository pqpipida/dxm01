package com.dxm.edu.entity;

	public class Page {
	    private int startRow;
	    private int pageSize;
	    private int currentPage;
	    private int totalPage;
	    private int totalRows;
	    private String queryCondition;
	    private String stateQueryCondition;
	    private String documentnumberQueryCondition;
	    private String  applicationunitQueryCondition;
	    private String  titleCondition;
	   
	    public Page() {
	    }

	    public int getStartRow() {
	        return this.startRow;
	    }

	    public void setStartRow(int startRow) {
	        this.startRow = startRow;
	    }

	    public int getPageSize() {
	        return this.pageSize;
	    }

	    public void setPageSize(int pageSize) {
	        this.pageSize = pageSize;
	    }

	    public int getCurrentPage() {
	        return this.currentPage;
	    }

	    public void setCurrentPage(int currentPage) {
	        this.currentPage = currentPage;
	    }

	    public int getTotalPage() {
	        return this.totalPage;
	    }

	    public void setTotalPage(int totalPage) {
	        this.totalPage = totalPage;
	    }

	    public int getTotalRows() {
	        return this.totalRows;
	    }

	    public void setTotalRows(int totalRows) {
	        this.totalRows = totalRows;
	    }

	    public String getQueryCondition() {
	        return this.queryCondition;
	    }

	    public void setQueryCondition(String queryCondition) {
	        this.queryCondition = queryCondition;
	    }

		public String getStateQueryCondition() {
			return stateQueryCondition;
		}

		public void setStateQueryCondition(String stateQueryCondition) {
			this.stateQueryCondition = stateQueryCondition;
		}

		public String getDocumentnumberQueryCondition() {
			return documentnumberQueryCondition;
		}

		public void setDocumentnumberQueryCondition(String documentnumberQueryCondition) {
			this.documentnumberQueryCondition = documentnumberQueryCondition;
		}

		public String getApplicationunitQueryCondition() {
			return applicationunitQueryCondition;
		}

		public void setApplicationunitQueryCondition(
				String applicationunitQueryCondition) {
			this.applicationunitQueryCondition = applicationunitQueryCondition;
		}

		public String getTitleCondition() {
			return titleCondition;
		}

		public void setTitleCondition(String titleCondition) {
			this.titleCondition = titleCondition;
		}

	

	    
	}

