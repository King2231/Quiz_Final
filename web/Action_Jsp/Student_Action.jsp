<%-- 
    Document   : Student_Action
    Created on : 03-Aug-2017, 17:41:19
    Author     : King
--%>

<%@page import="com.quiz.Workers.Student_Worker"%>
<%@page import="com.quiz.POJO.Student_Dt"%>
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="com.quiz.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Updates</title>
    </head>
    <body>
        <%
            try{
                String req=request.getParameter("submit");
                System.out.println(req);
                String result=null;
                Student_Dt sd=new Student_Dt();
                    if(req.equalsIgnoreCase("delete")){//Check for Delete Request
                    try{
                        result=Student_Worker.deleteStudent(Integer.parseInt(request.getParameter("id")));
                    }
                    catch(Exception e){
                        e.printStackTrace();
                    }
                }
                else{
                    sd.setStd_name(request.getParameter("sname"));
                    sd.setStd_mail(request.getParameter("mail"));
                    sd.setStd_ucid(request.getParameter("ucid"));
                    sd.setStd_sem(request.getParameter("sem"));
                    sd.setStd_phone(request.getParameter("phone"));
                    if(req.equalsIgnoreCase("add")){//Check for Add New Record Request 
                        sd.setStd_pwd(request.getParameter("pass"));
                            result=Student_Worker.addStudent(sd);  
                    }
                    else
                        if(req.equalsIgnoreCase("update")){//Check for Update Request
                            sd.setStd_id(Integer.parseInt(request.getParameter("id")));
                            result=Student_Worker.updateStudent(sd);
                        }
                }
                if(result.equalsIgnoreCase("Success"))
                    out.println("Success");
                else
                    out.println("Failure");   
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
    </body>
</html>
