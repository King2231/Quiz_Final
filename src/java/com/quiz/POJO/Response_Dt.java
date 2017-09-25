/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.POJO;

/**
 *
 * @author King
 */
public class Response_Dt {
     int resp_id,ques_id,ex_id,std_id;

     public int getQues_id() {
          return ques_id;
     }

     public void setQues_id(int ques_id) {
          this.ques_id = ques_id;
     }
     String response;
     public int getResp_id() {
          return resp_id;
     }

     public void setResp_id(int resp_id) {
          this.resp_id = resp_id;
     }

     public int getEx_id() {
          return ex_id;
     }

     public void setEx_id(int ex_id) {
          this.ex_id = ex_id;
     }

     public int getStd_id() {
          return std_id;
     }

     public void setStd_id(int std_id) {
          this.std_id = std_id;
     }

     public String getResponse() {
          return response;
     }

     public void setResponse(String response) {
          this.response = response;
     }
     
}
