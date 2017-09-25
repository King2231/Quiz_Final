/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;

import com.quiz.DatabaseConnector;
import com.quiz.POJO.Student_Dt;
import com.quiz.Results;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author King
 */
public class Student_Worker {
    //add student
    public static String addStudent(Student_Dt sd){
        String result="";
        try{
            String query="insert into student(std_ucid,std_name,std_sem,std_pwd,std_mail,std_phone) values(?,?,?,?,?,?)";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,sd.getStd_ucid());
            pstmt.setString(2,sd.getStd_name());
            pstmt.setString(3,sd.getStd_sem());
            pstmt.setString(4,sd.getStd_pwd());
            pstmt.setString(5,sd.getStd_mail());
            pstmt.setString(6,sd.getStd_phone());
            int i=pstmt.executeUpdate();
            if(i==1)
                result=Results.SUCCESS;
            else
                result=Results.FAILURE;
        DatabaseConnector.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
    //update student
    public static String updateStudent(Student_Dt sd){
        String result="";
        try{
            String query="update student set std_ucid=?,std_name=?,std_sem=?,std_mail=?,std_phone=? where std_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,sd.getStd_ucid());
            pstmt.setString(2,sd.getStd_name());
            pstmt.setString(3,sd.getStd_sem());
            //pstmt.setString(4,sd.getStd_pwd());
            pstmt.setString(4,sd.getStd_mail());
            pstmt.setString(5,sd.getStd_phone());
            pstmt.setInt(6,sd.getStd_id());
            int i=pstmt.executeUpdate();
            if(i==1)
                result=Results.SUCCESS;
            else
                result=Results.FAILURE;
        DatabaseConnector.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
    //Delete Student
    public static String deleteStudent(int std_id){
        String result="";
        try{
            String query="delete from student where std_id="+std_id+";";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            int i=pstmt.executeUpdate();
            if(i==1){
               result=Results.SUCCESS;
            }
            else
                result=Results.FAILURE;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
    //Show Student by ID
    public static Student_Dt showStudentById(int std_id){
        Student_Dt sd=null;
        try{
            String query="select * from student where std_id="+std_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            
            if(rs.next()){
                sd=new Student_Dt();
                sd.setStd_id(rs.getInt(1));
                sd.setStd_ucid(rs.getString(2));
                sd.setStd_name(rs.getString(3));
                sd.setStd_sem(rs.getString(4));
                sd.setStd_mail(rs.getString(6));
                sd.setStd_phone(rs.getString(7));
            }
            
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return sd;
    }
    //Show Student by UCID
    public static Student_Dt showStudentByUcid(String std_ucid){
        Student_Dt sd=null;
        try{
            String query="select * from student where std_ucid='"+std_ucid+"';";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next()){
                sd=new Student_Dt();
                sd.setStd_id(rs.getInt(1));
                sd.setStd_ucid(rs.getString(2));
                sd.setStd_name(rs.getString(3));
                sd.setStd_sem(rs.getString(4));
                sd.setStd_mail(rs.getString(6));
                sd.setStd_phone(rs.getString(7));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return sd;
    }
    //Show All Students
    public static ArrayList<Student_Dt> showAllStudents(){
        ArrayList<Student_Dt> list=new ArrayList<Student_Dt>();
        try{
            String query="select * from student";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            
            while(rs.next()){
               Student_Dt sd=new Student_Dt();
               sd.setStd_id(rs.getInt(1));
               sd.setStd_ucid(rs.getString(2));
                sd.setStd_name(rs.getString(3));
                sd.setStd_sem(rs.getString(4));
                sd.setStd_mail(rs.getString(6));
                sd.setStd_phone(rs.getString(7));
                list.add(sd);
                sd=null;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return list;
    }
    public static ArrayList<Student_Dt> showAllStudentsBySem(String sem){
        ArrayList<Student_Dt> list=new ArrayList<Student_Dt>();
        try{
            String query="select * from student where std_sem='"+sem+"';";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next()){
               Student_Dt sd=new Student_Dt();
               sd.setStd_id(rs.getInt(1));
               sd.setStd_ucid(rs.getString(2));
                sd.setStd_name(rs.getString(3));
                sd.setStd_sem(rs.getString(4));
                sd.setStd_mail(rs.getString(6));
                sd.setStd_phone(rs.getString(7));
                list.add(sd);
                sd=null;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return list;
    }
}
