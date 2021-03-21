package com.saartha.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import com.saartha.beans.DepartmentBean;
import com.saartha.interfaces.Department;

public class DepartmentManager implements Department {
	
	private static Scanner sc=new Scanner(System.in);
	private PreparedStatement pstmt;
	private PreparedStatement pstmt0;
	@Override
	public void saveDept(int deptId, String deptName, int college, int deptHodId, String hodName, String pwd) {

		DepartmentBean deptBean = new DepartmentBean(deptId, deptName, college, deptHodId, hodName, pwd);
		String s = "insert into dept values(?,?,?,?,?,?)";
		String s1= "select clgId from college where clgName='sce'";
		try {
			
			int dId = deptBean.getDeptId();
			String dName = deptBean.getDeptName();
			int clg = deptBean.getCollege();
			int deptHoDId = deptBean.getDeptHodId();
			String hoDName = deptBean.getHodName();
			String pass = deptBean.getPwd();

			
			Connection connectionProvider = ConnectionProvider.getConnectionProvider();
			System.out.println(connectionProvider);
			//System.out.println("enter the college name");
			//String cName=sc.next();
			pstmt0 = connectionProvider.prepareStatement(s1);
			ResultSet rs = pstmt0.executeQuery();
			int clg1=0;
			if (rs.next()) {
				clg1=rs.getInt(1);
				System.out.println(clg1);
				}
			pstmt = connectionProvider.prepareStatement(s);
			pstmt.setInt(1, dId);
			pstmt.setString(2, dName);
			pstmt.setInt(3, clg1);
			pstmt.setInt(4, deptHoDId);
			pstmt.setString(5, hoDName);
			pstmt.setString(6, pass);
			pstmt.executeUpdate();
			System.out.println("Updated Successfully");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private PreparedStatement pstmt1;

	@Override
	public void fetchDept() {

		String s = "select * from dept ";
		Connection connectionProvider = ConnectionProvider.getConnectionProvider();
		System.out.println(connectionProvider);
		try {
			pstmt1 = connectionProvider.prepareStatement(s);
			ResultSet rs = pstmt1.executeQuery();
			if (rs.next()) {
				System.out.println(rs.getInt(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getString(5));
				System.out.println(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private PreparedStatement pstmt2;

	@Override
	public void deleteDept() {

		String s = "delete from dept where deptId=10";
		Connection connectionProvider = ConnectionProvider.getConnectionProvider();
		System.out.println(connectionProvider);
		try {
			pstmt2 = connectionProvider.prepareStatement(s);
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
