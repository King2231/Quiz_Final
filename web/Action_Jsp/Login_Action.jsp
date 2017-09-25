<%-- 
    Document   : Login_Action
    Created on : 02-Sep-2017, 17:59:23
    Author     : King
--%>

<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="com.quiz.Workers.Teacher_Worker"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.quiz.DatabaseConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_Handler</title>
    </head>
    <body>
         <%
               response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
               response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
               response.setHeader("Expires", "0"); 
               String ucid= request.getParameter("ucid");
               String pass=request.getParameter("pass");
               System.out.println(ucid);
               System.out.println(pass);
           
               Teacher_Dt td=Teacher_Worker.showTeacherByUcId(ucid);
               if(td!=null){
                    String pwd=td.getPwd();
                    System.out.println("PWD : "+pwd);
                    if(pwd.equals(pass)){
                         session.setAttribute("teacher",td);
                         response.sendRedirect("../check.jsp");
                    }
                    else{
                         session.setAttribute("err", "Password Incorrect. Please try again");
                         response.sendRedirect("../Logins/Teacher_login.jsp");
                    }
               }
               else{
                    session.setAttribute("err", "The UCID is not registered. Please Contact Administrator.");
                         response.sendRedirect("../Logins/Teacher_login.jsp");
               }
           //String query="select tch_ucid,tch_pwd from teacher where tch_ucid='"+ucid+"' && tch_pwd='"+pass+"';";
           //Statement stmt=DatabaseConnector.getStatement();
           //ResultSet rs=stmt.executeQuery(query);
           /*
           if(rs.next())
            {
		String und=rs.getString(1);
		String passd=rs.getString(2);
                
                if(und.equals(ucid)&&passd.equals(pass))
                {
                    //Teacher_Dt td=Teacher_Worker.showTeacherByUcId(ucid); //session is created and pssed to rest of the forms >>imp   
                    
                }
                else
                {
                    response.sendRedirect("../Logins/Teacher_login.jsp");
                }
            }
           else
           {
           response.sendRedirect("../Logins/Teacher_login.jsp");
           }*/
         %>   
    </body>
</html>
