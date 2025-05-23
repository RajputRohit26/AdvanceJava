package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student;
import com.util.StudentUtil;

public class StudentDao {
	
	public static void insertStudent(Student s)
	{
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="insert into student(fname,lname,email,mobile,address,gender) values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public static void updateStudent(Student s)
	{
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="update student set fname=?,lname=?,email=?,mobile=?,address=?,gender=? where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.setInt(7, s.getId());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
    public static List<Student> getAllStudent()
    {
    	List<Student> list=new ArrayList<Student>();
    	try {
    		Connection conn=StudentUtil.createConnection();
    		String sql="select * from student";
    		PreparedStatement pst=conn.prepareStatement(sql);
    	    ResultSet rs=pst.executeQuery();
    	    while(rs.next())
    	    {
    	    	Student s=new Student();
    	    	s.setId(rs.getInt("id"));
    	    	s.setFname(rs.getString("fname"));
    	    	s.setLname(rs.getString("lname"));
    	    	s.setEmail(rs.getString("email"));
    	    	s.setMobile(rs.getString("mobile"));
    	    	s.setAddress(rs.getString("address"));
    	    	s.setGender(rs.getString("gender"));
    	    	list.add(s);
    	    			
    	    }
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return list;
    }
    public static void deleteStudent(int id)
    {
    	try {
    		Connection conn=StudentUtil.createConnection();
			String sql="delete from student where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
				
		}
    }
	public static Student getStudentById(int id)
	{
		Student s=null;
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="select * from student where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				s=new Student();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setMobile(rs.getString("mobile"));
				s.setAddress(rs.getString("address"));
				s.setGender(rs.getString("gender"));	
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return s;
	}
}
