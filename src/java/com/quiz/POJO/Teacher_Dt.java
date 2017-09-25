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
public class Teacher_Dt {
    int tch_id;
    String tch_ucid,pwd,tch_mail,tch_phone;

    public String getTch_mail() {
        return tch_mail;
    }

    public void setTch_mail(String tch_mail) {
        this.tch_mail = tch_mail;
    }

    public String getTch_phone() {
        return tch_phone;
    }

    public void setTch_phone(String tch_phone) {
        this.tch_phone = tch_phone;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getTch_ucid() {
        return tch_ucid;
    }

    public void setTch_ucid(String tch_ucid) {
        this.tch_ucid = tch_ucid;
    }
    public int getTch_id() {
        return tch_id;
    }

    public void setTch_id(int tch_id) {
        this.tch_id = tch_id;
    }

    public String getTch_name() {
        return tch_name;
    }

    public void setTch_name(String tch_name) {
        this.tch_name = tch_name;
    }
    String tch_name;
}
