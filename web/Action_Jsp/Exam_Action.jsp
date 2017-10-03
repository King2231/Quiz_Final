<%-- 
    Document   : Exam_Action
    Created on : 01-Sep-2017, 21:02:19
    Author     : King
--%>

<%@page import="com.quiz.DateWorker"%>
<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="com.quiz.POJO.Student_Dt"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.Workers.Student_Worker"%>
<%@page import="com.quiz.POJO.Results_Dt"%>
<%@page import="com.quiz.Workers.Results_Worker"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page import="com.quiz.POJO.Exam_Dt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam_Updates</title>
    </head>
    <body>
        <%
            Object o=session.getAttribute("teacher");
               Teacher_Dt td=new Teacher_Dt();
               if(o!=null){ 
                    td=(Teacher_Dt)o;
                    System.out.println(td.getTch_name()+"Logged In"); 
                    int t_id=td.getTch_id();
              
                    try{
                         String req=request.getParameter("submit");
                         System.out.println(req);
                         String result=null;
                         Exam_Dt ed=new Exam_Dt();
                         if(req.equalsIgnoreCase("delete")){//Check for Delete Request
                             try{
                                 result=Exam_Worker.deleteExam(Integer.parseInt(request.getParameter("id")));
                             }
                             catch(Exception e){
                                 e.printStackTrace();
                             }
                         }
                         else{
                             String subject=request.getParameter("sub");
                             String[] str=subject.split(",");
                             System.out.println(str[0]+str[1]);
                             ed.setSub_id(Integer.parseInt(str[0]));//SubId
                             
                             Subject_Dt sd=Subject_Worker.showSubById(ed.getSub_id());
                             ed.setEx_sem(sd.getSub_sem());//Sem
                             ed.setEx_co(str[1]);//CO
                             ed.setT_id(t_id);//tid
                             ed.setEx_date(request.getParameter("ex_date"));//date
                             ed.setEx_duration(request.getParameter("ex_duration"));//duration
                             ed.setNoofq(Integer.parseInt(request.getParameter("noofq")));//noofq
                             
                             //ed.setSub_id(sub_id);
                             //ed.setT_id(t_id);
                              if(req.equalsIgnoreCase("add")){//Check for Add New Record Request 
                                  ed.setEx_pwd(request.getParameter("ex_pwd"));//pwd
                                   result=Exam_Worker.addExam(ed);
                                   if(result.equalsIgnoreCase("Success")){
                                        System.out.println("Exam "+result+" added");
                                        result=null;
                                        Results_Dt rd=new Results_Dt();
                                             rd.setEx_id(Exam_Worker.getMaxExId());
                                        //rd.setDate(ed.getEx_date());
                                        //rd.setSub_id(ed.getSub_id());
                                        ArrayList<Student_Dt> slist=Student_Worker.showAllStudentsBySem(ed.getEx_sem());
                                        for(Student_Dt sdt:slist){
                                             rd.setStd_id(sdt.getStd_id());
                                             //rd.setEx_id(Exam_Worker.getMaxExId());
                                             rd.setRes_date(ed.getEx_date());
                                             rd.setStatus(0);
                                             result=Results_Worker.addResult(rd);
                                        }
                                   }
                                   else{
                                        out.println("Exam not added. Please Try again");
                                   }
                              }
                              else
                                   if(req.equalsIgnoreCase("update")){//Check for Update Request
                                       ed.setEx_id(Integer.parseInt(request.getParameter("id")));
                                       result=Exam_Worker.updateExam(ed);
                                   }
                              }
                              if(result.equalsIgnoreCase("Success")){
                                   out.println("Success");
                         }    
                         else
                              out.println("Failure");   
                    }
                    catch(Exception e){
                         e.printStackTrace();
                    }
               }
               else{
                    session.setAttribute("err", "Something went wrong. Please Login and Try again.");
                    response.sendRedirect("Logins/Teacher_login.jsp");
               }
        %>
    </body>
</html>
