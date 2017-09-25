<%-- 
    Document   : ShowSubById
    Created on : 31-Jul-2017, 10:03:40
    Author     : King
--%>

<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Edit Or Delete</title>
    </head>
    <body>
        <%int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("Id is"+id );  
        Subject_Dt sd=Subject_Worker.showSubById(id);
        %>
        <form name="form1" action="Action_Jsp\Subject_Action.jsp" method="POST">
            <input type="hidden" name="id" value="<%=sd.getSub_id()%>"><!--Id for Subject-->
            <input type="text" name="sname" placeholder="Enter Name" value="<%=sd.getSub_name()%>"><br>
            <input type="text" name="sem" placeholder="Enter Ucid" value="<%=sd.getSub_sem()%>"><br>
            <input type="text" name="cos" placeholder="Enter Ucid" value="<%=sd.getSub_cos()%>"><br>
            <input type="submit" name="submit" value="update"><br>
            <input type="submit" name="submit" value="delete">
        </form>
    </body>
</html>
