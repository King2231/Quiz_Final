<%-- 
    Document   : ShowAllSubject
    Created on : 31-Jul-2017, 10:03:27
    Author     : King
--%>

<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Subjects</title>
    </head>
    <body>
        <%
            ArrayList<Subject_Dt> list=Subject_Worker.showAllSubjects();
          %>  
        <table border="1" align="center" width="100%">
            <tr>
                <th>Subject Name</th>
                <th>Subject Semester</th>
                <th>Number of Course Outcomes</th>
             </tr>
            <% for(Subject_Dt sd:list) {%>
            <tr align="center">
                <td><a href="ShowSubById.jsp?id=<%=sd.getSub_id()%>"><%=sd.getSub_name()%></a></td>
                <td><%=sd.getSub_sem()%></td>
                <td><%=sd.getSub_cos()%></td>
            </tr>
            <%}%>
</table>
    </body>
</html>
