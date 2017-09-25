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
public class Questions_Dt {
    int q_id,ex_id,q_marks,q_no;

     public int getQ_marks() {
          return q_marks;
     }

     public void setQ_marks(int q_marks) {
          this.q_marks = q_marks;
     }
    String question,optn1,optn2,optn3,optn4,correct;

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public int getEx_id() {
        return ex_id;
    }

    public void setEx_id(int ex_id) {
        this.ex_id = ex_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getOptn1() {
        return optn1;
    }

    public void setOptn1(String optn1) {
        this.optn1 = optn1;
    }

    public String getOptn2() {
        return optn2;
    }

    public void setOptn2(String optn2) {
        this.optn2 = optn2;
    }

    public String getOptn3() {
        return optn3;
    }

    public void setOptn3(String optn3) {
        this.optn3 = optn3;
    }

    public String getOptn4() {
        return optn4;
    }

    public void setOptn4(String optn4) {
        this.optn4 = optn4;
    }

    public String getCorrect() {
        return correct;
    }

    public void setCorrect(String correct) {
        this.correct = correct;
    }

    public int getQ_no() {
        return q_no;
    }

    public void setQ_no(int q_no) {
        this.q_no = q_no;
    }
}
