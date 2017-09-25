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
   int res_id,std_id,ex_id,sub_id,status;
     Double score;
   String date,res_date;
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

    public int getSub_id() {
        return sub_id;
    }

    public void setSub_id(int sub_id) {
        this.sub_id = sub_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
   
}
