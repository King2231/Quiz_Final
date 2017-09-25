/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;

import com.quiz.DatabaseConnector;
import com.quiz.POJO.Subject_Dt;
import com.quiz.Results;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author King
 */
public class Subject_Worker {
    //Add Subject
    public static String addSubject(Subject_Dt sd){
        String result="";
        try{
            String query="insert into subject(sub_name,sub_sem,sub_tid,sub_cos) values(?,?,?,?)";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,sd.getSub_name());
            pstmt.setString(2,sd.getSub_sem());
            pstmt.setInt(3,sd.getSub_tid());
            pstmt.setString(4,sd.getSub_cos());
            int i=pstmt.executeUpdate();
            if(i==1){
                result=Results.SUCCESS;
            }
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

//Update Subject
    public static String updateSubject(Subject_Dt sd){
        String result="";
        try{
            String query="update subject set sub_name=?,sub_sem=?,sub_tid=?,sub_cos=? where sub_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,sd.getSub_name());
            pstmt.setString(2,sd.getSub_sem());
            pstmt.setInt(3,sd.getSub_tid());
            pstmt.setString(4,sd.getSub_cos());
            pstmt.setInt(5,sd.getSub_id());
            int i=pstmt.executeUpdate();
            if(i==1){
                result=Results.SUCCESS;
            }
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
//Delete Subject by ID
    public static String deleteSubject(int sub_id){
        String result="";
        try{
            String query="delete from subject where sub_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1, sub_id);
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
 //Show Subject by ID
    public static Subject_Dt showSubById(int sub_id){
        Subject_Dt sd=null;
        try{
            System.out.println("Worker ID" +sub_id);
            String query="select * from subject where sub_id="+sub_id+";";
            //PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            //pstmt.setInt(1, sub_id);
            ResultSet rs=DatabaseConnector.getResultSet(query);
           // System.out.println("Fetched Data is "+rs.getString(2));
            if(rs.next()){
                sd=new Subject_Dt();
                sd.setSub_id(rs.getInt(1));
                sd.setSub_name(rs.getString(2));
                sd.setSub_sem(rs.getString(3));
                sd.setSub_tid(rs.getInt(4));
                sd.setSub_cos(rs.getString(5));
            }
            
            System.out.println("Subject is"+sd.getSub_name());
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return sd;
    }
//show all subjects
    public static ArrayList<Subject_Dt> showAllSubjects(){
        ArrayList<Subject_Dt> list=new ArrayList<Subject_Dt>();
        try{
            String query="select * from subject";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next()){
                Subject_Dt sd=new Subject_Dt();
                sd.setSub_id(rs.getInt(1));
                sd.setSub_name(rs.getString(2));
                sd.setSub_sem(rs.getString(3));
                sd.setSub_tid(rs.getInt(4));
                sd.setSub_cos(rs.getString(5));
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
//Show Subjects By Tid
    public static ArrayList<Subject_Dt> showAllSubjectsByTid(int t_id){
        ArrayList<Subject_Dt> list=new ArrayList<Subject_Dt>();
        try{
            String query="select * from subject where sub_tid="+t_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next()){
                Subject_Dt sd=new Subject_Dt();
                sd.setSub_id(rs.getInt(1));
                sd.setSub_name(rs.getString(2));
                sd.setSub_sem(rs.getString(3));
                sd.setSub_tid(rs.getInt(4));
                sd.setSub_cos(rs.getString(5));
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