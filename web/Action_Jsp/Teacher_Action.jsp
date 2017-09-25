<%-- 
    Document   : AddTeacher_Action
    Created on : 30-Jul-2017, 13:53:16
    Author     : King
--%>

<%@page import="com.quiz.Workers.Teacher_Worker"%>
<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="com.quiz.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Teacher</title>
    </head>
    <body>
        <%
            try{
                String req=request.getParameter("submit");
                System.out.println(req);
                String result=null;
                Teacher_Dt td=new Teacher_Dt();
                if(req.equalsIgnoreCase("delete")){//Check for Delete Request
                    td.setTch_id(Integer.parseInt(request.getParameter("id")));
                    System.out.println("id set"+td.getTch_id()); 
                    result=Teacher_Worker.deleteTeacher(td);
                }
                else{
                    td.setTch_name(request.getParameter("tname"));
                    td.setTch_ucid(request.getParameter("ucid"));
                    if(req.equalsIgnoreCase("add")){//Check for Add New Record Request 
                        result=Teacher_Worker.addTeacher(td);
                    }
                    else
                        if(req.equalsIgnoreCase("update")){//Check for Update Request
                            System.out.println("UPD");
                            td.setTch_id(Integer.parseInt(request.getParameter("id")));
                            result=Teacher_Worker.UpdateTeacher(td);
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
