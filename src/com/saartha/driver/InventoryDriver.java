package com.saartha.driver;

import java.util.Scanner;

import com.saartha.interfaces.Department;
import com.saartha.managers.DepartmentManager;

public class InventoryDriver {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Enter your choice");
		int ch = sc.nextInt();
		Department deptManager = new DepartmentManager();
		while (ch < 2) {
			switch (ch) {

			case 1:
				Scanner in = new Scanner(System.in);
				System.out.println("Enter 1 to save to db");
				System.out.println("Enter 2 to fetch from db");
				System.out.println("Enter 3 to delete from db");
				int i = in.nextInt();
				
				while(i<4) {
				switch (i) {

				case 1:
					System.out.println("Enter the values for adding to dept table");
					int dId = sc.nextInt();
					String dName = sc.next();
					int deptHoDId = sc.nextInt();
					String hoDName = sc.next();
					String pass = sc.next();

					deptManager.saveDept(dId, dName, 1011, deptHoDId, hoDName, pass);
					break;

				case 2:
					System.out.println("Fetching from dept table");
					deptManager.fetchDept();
					break;

				case 3:
					System.out.println("Delete from dept table");
					deptManager.deleteDept();
					break;

				default:
					System.out.println("Invalid choice");
				}
				break;
				}
				
			default: 
				System.out.println("invalid");
			}
			break;
		}
	}
}
