/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;

import com.quiz.DatabaseConnector;
import com.quiz.POJO.Questions_Dt;
import com.quiz.Results;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author King
 */

public class Questions_Worker {
    //add questions
    public static String AddQuestion(Questions_Dt qd){
        String result="";
        try{
            String query="insert into questions(q_no,question,optn1,optn2,optn3,optn4,correct,exam_id,q_marks) values(?,?,?,?,?,?,?,?,?);";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,qd.getQ_no());
            pstmt.setString(2,qd.getQuestion());
            pstmt.setString(3,qd.getOptn1());
            pstmt.setString(4,qd.getOptn2());
            pstmt.setString(5,qd.getOptn3());
            pstmt.setString(6,qd.getOptn4());
            pstmt.setString(7,qd.getCorrect());
            pstmt.setInt(8,qd.getEx_id());
            pstmt.setInt(9,qd.getQ_marks());
            
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
    //update question
    public static String UpdateQuestion(Questions_Dt qd){
        String result="";
        try{
            String query="update questions set q_no=?,question=?,optn1=?,optn2?,optn3=?,optn4=?,correct=?,exam_id=?,q_marks=? where q_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,qd.getQ_no());
            pstmt.setString(2,qd.getQuestion());
            pstmt.setString(3,qd.getOptn1());
            pstmt.setString(4,qd.getOptn2());
            pstmt.setString(5,qd.getOptn3());
            pstmt.setString(6,qd.getOptn4());
            pstmt.setString(7,qd.getCorrect());
            pstmt.setInt(8,qd.getEx_id());
            pstmt.setInt(9,qd.getQ_marks());
            pstmt.setInt(10,qd.getQ_id());
            
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
    //Delete Questions
    public static String DeleteQuestion(int q_id){
        String result="";
        try{
            String query="delete from questions where q_id="+q_id+";";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
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
    //Show Questions By ID
    public static Questions_Dt ShowQuestionByID(int q_id){
        Questions_Dt qd=null;
        try{
           String query="select * from Questions where q_id="+q_id+";";
           ResultSet rs=DatabaseConnector.getResultSet(query);
           qd=new Questions_Dt();
           qd.setQ_id(rs.getInt(1));
           qd.setQ_no(rs.getInt(2));
           qd.setQuestion(rs.getString(3));
           qd.setOptn1(rs.getString(4));
           qd.setOptn2(rs.getString(5));
           qd.setOptn3(rs.getString(6));
           qd.setOptn4(rs.getString(7));
           qd.setCorrect(rs.getString(8));
           qd.setEx_id(rs.getInt(9));
           qd.setQ_marks(rs.getInt(10));
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return qd;
    }
    public static ArrayList<Questions_Dt> ShowQuestionByExID(int ex_id){
         ArrayList<Questions_Dt> list=new ArrayList<>();
        try{
               String query="select * from Questions where exam_id="+ex_id+";";
               ResultSet rs=DatabaseConnector.getResultSet(query);
               Questions_Dt qd;
               while(rs.next()){
                    qd=new Questions_Dt();
                    qd.setQ_id(rs.getInt(1));
                    qd.setQ_no(rs.getInt(2));
                    qd.setQuestion(rs.getString(3));
                    qd.setOptn1(rs.getString(4));
                    qd.setOptn2(rs.getString(5));
                    qd.setOptn3(rs.getString(6));
                    qd.setOptn4(rs.getString(7));
                    qd.setCorrect(rs.getString(8));
                    qd.setEx_id(rs.getInt(9));
                    qd.setQ_marks(rs.getInt(10));
                    list.add(qd);
                    qd=null;
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
        public static Questions_Dt ShowQuestionBySubID(int sub_id){
        Questions_Dt qd=null;
        try{
           String query="select * from Questions where sub_id="+sub_id+";";
           ResultSet rs=DatabaseConnector.getResultSet(query);
           qd=new Questions_Dt();
           qd.setQ_id(rs.getInt(1));
           qd.setQ_no(rs.getInt(2));
           qd.setQuestion(rs.getString(3));
           qd.setOptn1(rs.getString(4));
           qd.setOptn2(rs.getString(5));
           qd.setOptn3(rs.getString(6));
           qd.setOptn4(rs.getString(7));
           qd.setCorrect(rs.getString(8));
           qd.setEx_id(rs.getInt(9));
           qd.setQ_marks(rs.getInt(10));
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return qd;
    }
}
