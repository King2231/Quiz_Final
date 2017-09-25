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
public class Exam_Dt {
   int  ex_id,sub_id,t_id,noofq;

     
String ex_co,ex_sem,ex_pwd,ex_date,ex_duration;
     public int getNoofq() {
          return noofq;
     }

     public void setNoofq(int noofq) {
          this.noofq = noofq;
     }
   

     public String getEx_date() {
          return ex_date;
     }

     public void setEx_date(String ex_date) {
          this.ex_date = ex_date;
     }

     public String getEx_duration() {
          return ex_duration;
     }

     public void setEx_duration(String ex_duration) {
          this.ex_duration = ex_duration;
     }

    public String getEx_pwd() {
        return ex_pwd;
    }

    public void setEx_pwd(String ex_pwd) {
        this.ex_pwd = ex_pwd;
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

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getEx_co() {
        return ex_co;
    }

    public void setEx_co(String ex_co) {
        this.ex_co = ex_co;
    }

    public String getEx_sem() {
        return ex_sem;
    }

    public void setEx_sem(String ex_sem) {
        this.ex_sem = ex_sem;
    }
}
