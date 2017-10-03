/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.Workers;

import com.quiz.DatabaseConnector;
import com.quiz.POJO.Results_Dt;
import com.quiz.Results;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author King
 */
public class Results_Worker {
//Add New Result    
    public static String addResult(Results_Dt rd){
        String result="";
        try{
            String query="insert into result(std_id,exam_id,date,status) values(?,?,?,?);";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,rd.getStd_id());
            pstmt.setInt(2, rd.getEx_id());
            pstmt.setString(3,rd.getRes_date());
            //pstmt.setDouble(4,rd.getScore());
            //pstmt.setInt(4,rd.getSub_id());
            pstmt.setInt(5,0);
            
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
    //upd result
    public static String updateResult(Results_Dt rd){
        String result="";
        try{
            String query="update result set std_id=?,exam_id=?,date=?,score=? where res_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,rd.getStd_id());
            pstmt.setInt(2,rd.getEx_id());
            pstmt.setString(3,rd.getRes_date());
            pstmt.setDouble(4,rd.getScore());
            //pstmt.setInt(5,rd.getSub_id());
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
    //delete result
    public static String deleteResult(int r_id){
        String result="";
        try{
               String query="delete fron result where res_id="+r_id+";";
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
        DatabaseConnector.close();
        return result;
    }
    //delete result by ex_id
    public static String deleteResultbyExid(int ex_id){
        String result="";
        try{
                String query="delete fron result where exam_id="+ex_id+";";
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
        DatabaseConnector.close();
        return result;
    }
    //Show Result by Id
    public static Results_Dt showResById(int r_id){
        Results_Dt rd=null;
        try{
            String query="select * from result where res_id="+r_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            rd=new Results_Dt();
            rd.setRes_id(rs.getInt(1));
            rd.setStd_id(rs.getInt(2));
            rd.setEx_id(rs.getInt(3));
            rd.setRes_date(rs.getString(4));
            rd.setScore(rs.getDouble(5));
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
              DatabaseConnector.close();
         }
        return rd;
    }
    //Show Results
    public static ArrayList<Results_Dt> showAllResults(){
      ArrayList<Results_Dt> list=new ArrayList<Results_Dt>();
      try{
          String query="select * from result";
          ResultSet rs=DatabaseConnector.getResultSet(query);
          while(rs.next()){
            Results_Dt rd=new Results_Dt();
            rd.setRes_id(rs.getInt(1));
            rd.setStd_id(rs.getInt(2));
            rd.setEx_id(rs.getInt(3));
            rd.setRes_date(rs.getString(4));
            rd.setScore(rs.getDouble(5)); 
            list.add(rd);
            rd=null;
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
