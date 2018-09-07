package com.dxm.edu.mapper;

import java.util.List;

import com.dxm.edu.entity.RecordofApprovalEntity;


public interface RecordofApprovalMapper {
	//int insertRecordofApproval(RecordofApprovalEntity record  );

	List<RecordofApprovalEntity> getbyDocumentnumber(String documentnumber);

	List<RecordofApprovalEntity> getRecordbydocumentnumber(String documentnumber);

	void insertRecordofApproval(RecordofApprovalEntity record);

	

	
}
