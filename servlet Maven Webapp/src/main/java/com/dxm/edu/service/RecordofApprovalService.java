package com.dxm.edu.service;

import java.util.List;

import com.dxm.edu.entity.RecordofApprovalEntity;



public interface RecordofApprovalService {

	public boolean insertRecordofApproval( RecordofApprovalEntity  record );

	public boolean getDocumentnumber(String documentnumber);

	public List<RecordofApprovalEntity> getRecordsbydocumentnumber(
			String documentnumber);

	//public boolean updateRecordofApproval(RecordofApprovalEntity record);

	


}
