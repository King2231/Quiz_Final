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
import com.quiz.POJO.Response_Dt;
import com.quiz.Results;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class Reponse_Worker {
     //Add New Response    
    public static String addResponse(Response_Dt rd){
        String result="";
        try{
            String query="insert into response(std_id,ex_id,ques_id) values(?,?,?);";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            //pstmt.setString(1,rd.getResponse());
            pstmt.setInt(1, rd.getStd_id());
            pstmt.setInt(2,rd.getEx_id());
            pstmt.setInt(3,rd.getQues_id());
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
     //Update Response    
    public static String UpdateResponse(Response_Dt rd){
        String result="";
        try{
            String query="update response set response=? where std_id=? and ex_id=? and ques_id=?;";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,rd.getResponse());
            pstmt.setInt(2, rd.getStd_id());
            pstmt.setInt(3,rd.getEx_id());
            pstmt.setInt(4,rd.getQues_id());
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
}
