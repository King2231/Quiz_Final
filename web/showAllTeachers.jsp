<%-- 
    Document   : showAllTeachers
    Created on : 30-Jul-2017, 14:07:17
    Author     : King
--%>

<%@page import="com.quiz.Workers.Teacher_Worker"%>
<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="com.quiz.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Teachers</title>
    </head>
    <body>
        <%
            ArrayList<Teacher_Dt> list=Teacher_Worker.getAllTeacher();
          %>  
        <table border="1" align="center" width="100%">
            <tr>
                <th>Name</th>
                <th>U_cid</th>
             </tr>
            <% for(Teacher_Dt td:list) {%>
            <tr align="center">
                <td><a href="ShowTeacherById.jsp?id=<%=td.getTch_id()%>"><%=td.getTch_name()%></a></td>
                <td><%=td.getTch_ucid()%></td>
            </tr>
            <%}%>
</table>
        
    </body>
</html>
