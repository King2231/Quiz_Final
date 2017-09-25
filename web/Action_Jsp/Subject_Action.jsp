<%-- 
    Document   : Subject_Action
    Created on : 31-Jul-2017, 10:29:16
    Author     : King
--%>

<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Action</title>
    </head>
    <body>
        <%
            try{
                String req=request.getParameter("submit");
                System.out.println(req);
                String result=null;
                Subject_Dt sd=new Subject_Dt();
                if(req.equalsIgnoreCase("delete")){//Check for Delete Request
                    result=Subject_Worker.deleteSubject(Integer.parseInt(request.getParameter("id")));
                }
                else{
                    sd.setSub_name(request.getParameter("sname"));
                    sd.setSub_tid(1);
                    sd.setSub_sem(request.getParameter("sem"));
                    sd.setSub_cos(request.getParameter("cos"));
                    if(req.equalsIgnoreCase("add")){//Check for Add New Record Request 
                        result=Subject_Worker.addSubject(sd);
                    }
                    else
                        if(req.equalsIgnoreCase("update")){//Check for Update Request
                            System.out.println("UPD");
                            sd.setSub_id(Integer.parseInt(request.getParameter("id")));
                            result=Subject_Worker.updateSubject(sd);
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
