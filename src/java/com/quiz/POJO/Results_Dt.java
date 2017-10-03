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
public class Results_Dt {
   int res_id,std_id,ex_id,status;
     Double score;
   String result_dt,res_date;

     public String getResult_dt() {
          return result_dt;
     }

     public void setResult_dt(String result_dt) {
          this.result_dt = result_dt;
     }
     public int getStatus() {
          return status;
     }

     public void setStatus(int status) {
          this.status = status;
     }

     public String getRes_date() {
          return res_date;
     }

     public void setRes_date(String res_date) {
          this.res_date = res_date;
     }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public int getRes_id() {
        return res_id;
    }

    public void setRes_id(int res_id) {
        this.res_id = res_id;
    }

    public int getStd_id() {
        return std_id;
    }

    public void setStd_id(int std_id) {
        this.std_id = std_id;
    }

    public int getEx_id() {
        return ex_id;
    }

    public void setEx_id(int ex_id) {
        this.ex_id = ex_id;
    }
   
}
