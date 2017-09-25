<%-- 
    Document   : check
    Created on : 02-Sep-2017, 22:46:05
    Author     : King
--%>

<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.POJO.Exam_Dt"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_Check</title>
    </head>
    <body>
     <%
          Object o=session.getAttribute("teacher");
          Teacher_Dt td=new Teacher_Dt();
          if(o!=null){
               td=(Teacher_Dt)o;
               System.out.println(td.getTch_name()); 
               
               ArrayList<Exam_Dt> list= Exam_Worker.getAllExamByTid(td.getTch_id());
               
          
     %>
     <h1>Hi <%=td.getTch_name()%></h1> <a href="AddExam.jsp">Generate Quiz</a>
     <%
          for(Exam_Dt ed:list){
               Subject_Dt sd=Subject_Worker.showSubById(ed.getSub_id()); 
     %>
          <a href="AddQuestions.jsp?id=<%=ed.getEx_id()%>">Add Questions to <%=sd.getSub_name()%> CO <%=ed.getEx_co()%></a><br>
    </body>
    <%    }
     }    
     else{
          session.setAttribute("err","You are not logged in. Please Login to Continue");
          response.sendRedirect("Logins/Teacher_login.jsp");
     } 
     %>
</html>