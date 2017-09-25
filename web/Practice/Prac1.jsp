<%-- 
    Document   : Prac1
    Created on : 13-Sep-2017, 23:44:54
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>JSP Page</title>
     </head>
     <body>
          <%
               String s="H i K i n g... W a s s u p !";
               String[] s1=s.split(" ");
               for(int i=0;i<s1.length;i++){
                    %>
                    <%=s1[i]%><br>
            <%   }
          %>
     </body>
</html>
