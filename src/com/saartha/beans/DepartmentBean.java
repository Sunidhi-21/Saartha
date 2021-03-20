package com.saartha.beans;

public class DepartmentBean {
	
	private int deptId;
	private String deptName;
	private int college;
	private int deptHodId;
	private String hodName;
	private String pwd;
	
	public DepartmentBean(int deptId, String deptName, int college, int deptHodId, String hodName, String pwd) {
		this.deptId = deptId;
		this.deptName = deptName;
		this.college = college;
		this.deptHodId = deptHodId;
		this.hodName = hodName;
		this.pwd = pwd;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public int getCollege() {
		return college;
	}

	public void setCollege(int college) {
		this.college = college;
	}

	public int getDeptHodId() {
		return deptHodId;
	}

	public void setDeptHodId(int deptHodId) {
		this.deptHodId = deptHodId;
	}

	public String getHodName() {
		return hodName;
	}

	public void setHodName(String hodName) {
		this.hodName = hodName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "DepartmentBean [deptId=" + deptId + ", deptName=" + deptName + ", college=" + college + ", deptHodId="
				+ deptHodId + ", hodName=" + hodName + ", pwd=" + pwd + "]";
	}
	
}
