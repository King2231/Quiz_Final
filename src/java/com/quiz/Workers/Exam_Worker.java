/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;

/**
 *
 * @author King
 */
import com.quiz.DatabaseConnector;
import com.quiz.POJO.Exam_Dt;
import com.quiz.Results;
import java.sql.*;
import java.util.*;
public class Exam_Worker {
     //Add Exam
    public static String addExam(Exam_Dt ed)
    {
       String result = "";
       try
       {
           String query="Insert into exam(sub_id,exam_sem,co,tch_id,ex_pwd,ex_date,ex_duration,noofq) values (?,?,?,?,?,?,?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           //pstmt.setInt(1,ed.getEx_id());
           pstmt.setInt(1,ed.getSub_id());
           pstmt.setString(2,ed.getEx_sem());
           pstmt.setString(3,ed.getEx_co());
           pstmt.setInt(4,ed.getT_id());
           pstmt.setString(5,ed.getEx_pwd());
           pstmt.setString(6,ed.getEx_date());
           pstmt.setString(7,ed.getEx_duration());
           pstmt.setInt(8,ed.getNoofq());
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
    
//Update Exam By id
    public static String updateExam(Exam_Dt ed)
    {
        String result="";
        try
        {
            String query="Update exam set sub_id=?,exam_sem=?,co=?,tch_id=?,ex_pwd=?,ex_date=?,ex_duration=?,noofq=? where exam_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,ed.getSub_id());
            pstmt.setString(2,ed.getEx_sem());
            pstmt.setString(3,ed.getEx_co());
            pstmt.setInt(4,ed.getT_id());
            pstmt.setString(5,ed.getEx_pwd());
            pstmt.setString(6,ed.getEx_date());
            pstmt.setString(7,ed.getEx_duration());
            pstmt.setInt(8,ed.getNoofq());
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
    
//Delete Exam By id
    public static String deleteExam(int ex_id)
    {
       String result="";
    try
    {   
        String query="Delete from exam where exam_id="+ex_id+";";
        PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
              //pstmt.setInt(1,ed.getEx_id());
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
        result=Results.PROBLEM;
        e.printStackTrace();
    }
    finally{
              DatabaseConnector.close();
         }
    return result;
    
   }
    public static String deleteExamByExid(int ex_id)
    {
       String result="";
    try
    {
        String query="Delete from exam where exam_id='"+ex_id+"';";
        PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
        int i=pstmt.executeUpdate();
        if(i==1)
        {
            result=Results.SUCCESS;
        }
   else
        {
            result=Results.FAILURE;
        
        }
    DatabaseConnector.close();
    }
    catch(Exception e)
    {
        result=Results.PROBLEM;
        e.printStackTrace();
    }
    finally{
              DatabaseConnector.close();
         }
    return result;
    
   }
//Exam Details Show By id
    public static Exam_Dt showExamById(int ex_id)
    {
        Exam_Dt ed=null;
        try
        {
            String query="Select * from exam where exam_id ="+ex_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        ed=new Exam_Dt();
                        ed.setEx_id(rs.getInt(1));
                        ed.setEx_sem(rs.getString(3));
                        ed.setSub_id(rs.getInt(2));
                        ed.setEx_co(rs.getString(4));
                        ed.setT_id(rs.getInt(5));
                        ed.setEx_pwd(rs.getString(6));
                        ed.setEx_date(rs.getString(7));
                        ed.setEx_duration(rs.getString(8));
                        ed.setNoofq(rs.getInt(9));
                    } 
                    
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return ed;
    } 
    //Show Exam by teacher
    public static ArrayList<Exam_Dt> getAllExamByTid(int t_id)
        {
            ArrayList<Exam_Dt>list=new ArrayList<Exam_Dt>();
            try
            {
                String query="Select * from exam where tch_id ="+t_id+";";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Exam_Dt ed=new Exam_Dt();
                    ed=new Exam_Dt();
                    ed.setEx_id(rs.getInt(1));
                    ed.setEx_sem(rs.getString(3));
                    ed.setSub_id(rs.getInt(2));
                    ed.setEx_co(rs.getString(4));
                    ed.setT_id(rs.getInt(5));
                    ed.setEx_pwd(rs.getString(6));
                    ed.setEx_date(rs.getString(7));
                    ed.setEx_duration(rs.getString(8));
                    ed.setNoofq(rs.getInt(9));
                    list.add(ed);
                    ed=null; 
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
    //Exam get all
    public static ArrayList<Exam_Dt> getAllExam()
        {
            ArrayList<Exam_Dt>list=new ArrayList<Exam_Dt>();
            try
            {
                String query="Select * from exam;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Exam_Dt ed=new Exam_Dt();
                    ed=new Exam_Dt();
                    ed.setEx_id(rs.getInt(1));
                    ed.setEx_sem(rs.getString(2));
                    ed.setSub_id(rs.getInt(3));
                    ed.setEx_co(rs.getString(4));
                    ed.setT_id(rs.getInt(5));
                    ed.setEx_pwd(rs.getString(6));
                    ed.setEx_date(rs.getString(7));
                    ed.setEx_duration(rs.getString(8));
                    ed.setNoofq(rs.getInt(9));
                    list.add(ed);
                    ed=null; 
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
    //Max Exam ID
    public static int getMaxExId()
     {
         int id=0;
         try
         {
         String query="select max(exam_id) from exam;";
         ResultSet rs=DatabaseConnector.getResultSet(query);
         if(rs.next())
             {
              id=rs.getInt(1);
             }
         DatabaseConnector.close();
         }
         catch(Exception ex)
         {
          ex.printStackTrace();
         }
         finally{
              DatabaseConnector.close();
         }
         return id;
     }
}
