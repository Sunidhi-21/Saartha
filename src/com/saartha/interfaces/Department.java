package com.saartha.interfaces;

public interface Department {
	
	void saveDept(int deptId, String deptName, int college, int deptHodId, String hodName, String pwd);
	void fetchDept();
	void deleteDept();
	
}
