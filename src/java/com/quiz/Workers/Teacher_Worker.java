/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;
import com.quiz.DatabaseConnector;
import com.quiz.POJO.Teacher_Dt;
import com.quiz.Results;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author King
 */
public class Teacher_Worker {
    //add teacher
    public static String addTeacher(Teacher_Dt td)
    {
       String result = "";
       try
       {
           String query="Insert into teacher(tch_name,tch_ucid,tch_pwd,tch_mail,tch_phone) values (?,?,?,?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setString(1,td.getTch_name());
           pstmt.setString(2,td.getTch_ucid());
           pstmt.setString(3,td.getPwd());
           pstmt.setString(4,td.getTch_mail());
           pstmt.setString(5,td.getTch_phone());
           int i=pstmt.executeUpdate();
           if(i==1)
           {
               result=Results.SUCCESS;
           }
           else
           {
               result=Results.FAILURE;
           }
       
       }
       catch(Exception e)
        {
            e.printStackTrace();
        }
       finally{
              DatabaseConnector.close();
         }
       return result;
    } 
//Update teacher By id
    public static String UpdateTeacher(Teacher_Dt td)
    {
        String result="";
        try
        {
            String query="Update teacher set tch_name=?,tch_ucid=?,tch_pwd=?,tch_mail=?,tch_phone=? where tch_id=?";
            System.out.println("Id is "+td.getTch_id());
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,td.getTch_name());
            pstmt.setString(2,td.getTch_ucid());
            pstmt.setString(3,td.getPwd());
            pstmt.setString(4,td.getTch_mail());
            pstmt.setString(5,td.getTch_phone());
            pstmt.setInt(6,td.getTch_id());
            int i=pstmt.executeUpdate();
            if(i==1)
            {
                result=Results.SUCCESS;
            }
            else
            {
                result=Results.FAILURE;
            }
           
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
//Delete teacher By id
    public static String deleteTeacher(Teacher_Dt td){
        String result="";
        try{   
            String query="Delete from teacher where tch_id=?;";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,td.getTch_id());
            int i=pstmt.executeUpdate();
            if(i==1)
                result=Results.SUCCESS;
        else
            result=Results.FAILURE;
        
        }
        catch(Exception e){
            result=Results.PROBLEM;
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
    //Delete  teacher by ucid
    public static String deleteTeacherByUCid(String tch_ucid){
        String result="";
        try{
            String query="Delete from teacher where tch_ucid='"+tch_ucid+"';";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            int i=pstmt.executeUpdate();
            if(i==1){
                result=Results.SUCCESS;
            }
            else{
               result=Results.FAILURE;   
            }
           
        }
        catch(Exception e){
            result=Results.PROBLEM;
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return result;
    }
//teacher Details Show By id
    public static Teacher_Dt showTeacherById(int tch_id)
    {
        Teacher_Dt td=null;
        try{
            String query="Select * from teacher where tch_id ="+tch_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next()){
                td=new Teacher_Dt();
                td.setTch_id(rs.getInt(1));
                td.setTch_name(rs.getString(2));
                td.setTch_ucid(rs.getString(3));
                td.setTch_mail(rs.getString(5));
                td.setTch_phone(rs.getString(6));
            }    
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return td;
    }
    //teacher Details by UCID
    //teacher Details Show By id
    public static Teacher_Dt showTeacherByUcId(String uc_id){
        Teacher_Dt td=null;
        try{
            String query="Select * from teacher where tch_ucid='"+uc_id+"';";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        td=new Teacher_Dt();
                        td.setTch_id(rs.getInt(1));
                        td.setTch_name(rs.getString(2));
                        td.setTch_ucid(rs.getString(3));
                        td.setPwd(rs.getString(4));
                        td.setTch_mail(rs.getString(5));
                        td.setTch_phone(rs.getString(6));
                    }    
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return td;
    }
    //Teacher get all
    public static ArrayList<Teacher_Dt> getAllTeacher(){
            ArrayList<Teacher_Dt>list=new ArrayList<Teacher_Dt>();
            try{
                Teacher_Dt td=null;
                String query="Select * from teacher;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next()){
                    td=new Teacher_Dt();
                    td.setTch_id(rs.getInt(1));
                    td.setTch_name(rs.getString(2));
                    td.setTch_ucid(rs.getString(3));
                    td.setTch_mail(rs.getString(5));
                    td.setTch_phone(rs.getString(6));
                    list.add(td);
                    td=null;
                 }
            
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            finally{
              DatabaseConnector.close();
         }
                return list;
        }
}
