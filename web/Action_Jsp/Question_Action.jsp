<%-- 
    Document   : Question_Action
    Created on : 25-Sep-2017, 00:42:29
    Author     : King
--%>

<%@page import="com.quiz.Workers.Questions_Worker"%>
<%@page import="com.quiz.POJO.Questions_Dt"%>
<%@page import="com.quiz.POJO.Exam_Dt"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>JSP Page</title>
     </head>
     <body>
          <%
               int ex_id=Integer.parseInt(request.getParameter("ex_id"));
               Exam_Dt ed=Exam_Worker.showExamById(ex_id);
               Questions_Dt qd=null;
               for(int i=1;i<=ed.getNoofq();i++){
                    qd=new Questions_Dt();
                    qd.setEx_id(ex_id);
                    qd.setQ_no(i);
                    qd.setQuestion(request.getParameter("q"+Integer.toString(i)));
                    qd.setOptn1(request.getParameter("optn1"+Integer.toString(i)));
                    qd.setOptn2(request.getParameter("optn2"+Integer.toString(i)));
                    qd.setOptn3(request.getParameter("optn3"+Integer.toString(i)));
                    qd.setOptn4(request.getParameter("optn4"+Integer.toString(i)));
                    int id=Integer.parseInt(request.getParameter("optradio"+Integer.toString(i)));
                    switch(id){
                         case 1:
                              qd.setCorrect(qd.getOptn1());
                              break;
                         case 2:
                              qd.setCorrect(qd.getOptn2());
                              break;
                         case 3:
                              qd.setCorrect(qd.getOptn3());
                              break;
                         case 4:
                              qd.setCorrect(qd.getOptn4());
                              break;
                    }
                    if(request.getParameter("marks"+Integer.toString(i))!="")
                         qd.setQ_marks(Integer.parseInt(request.getParameter("marks"+Integer.toString(i))));
                    else
                         qd.setQ_marks(1);
                    
                    try{
                         String res=Questions_Worker.AddQuestion(qd);
                         if(res.equalsIgnoreCase("Success"))
                              session.setAttribute("err","All Questions Added");
                    }
                    catch(Exception e){
                         
                    }
                    
               }
          %>
     </body>
</html>
