<%-- 
    Document   : ShowTeacherByID
    Created on : 30-Jul-2017, 14:18:55
    Author     : King
--%>
<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="com.quiz.Workers.Teacher_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Teacher</title>
    </head>
    <body>
        <%int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("Id is"+id );  
        Teacher_Dt td=Teacher_Worker.showTeacherById(id);
        %>
        <form name="form1" action="Action_Jsp\Teacher_Action.jsp" method="POST">
            <input type="hidden" name="id" value="<%=td.getTch_id()%>"> <!--id for Teacher-->
            <input type="text" name="tname" placeholder="Enter Name" value="<%=td.getTch_name()%>"><br>
            <input type="text" name="ucid" placeholder="Enter Ucid" value="<%=td.getTch_ucid()%>"><br>
            <input type="submit" name="submit" value="update"><br>
            <input type="submit" name="submit" value="delete">
        </form>
        
    </body>
</html>
