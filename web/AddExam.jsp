<%-- 
    Document   : AddExam
    Created on : 28-Aug-2017, 23:00:12
    Author     : King
--%>

<%@page import="com.quiz.POJO.Teacher_Dt"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SPIT: MCA Dept. Quiz Portal</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/logo_png.png" type="favicon/ico" />
        <style type="text/css">
          .s1{
               border-radius: 0px;
               color:rgb(0,0,0);
               text-shadow: 0px 0px 0px #0000ff;
               letter-spacing:2px;
          }
          #txt{
               border-radius: 5px;
               -moz-box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               -webkit-box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               border-bottom: none;
               font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
               font-size: 200px;
          }
          @media only screen and (max-width: 1200px) {
               #txt{
                    font-size: 150px;
               }
          }
          @media only screen and (max-width: 1000px) {
               #txt{
                    font-size: 100px;
               }
          }
          @media only screen and (max-width: 500px) {
               #txt{
                    font-size: 60px;
               }
          }
         </style>
         <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
</head>
     <body>
          <%
               String teacher="";
               Object o=session.getAttribute("teacher");
               Teacher_Dt td=new Teacher_Dt();
               if(o!=null){ 
                    td=(Teacher_Dt)o;
                    System.out.println(td.getTch_name()+"Logged In"); 
                    int t_id=td.getTch_id();
                    //Subject_Dt sd=new Subject_Dt();
                    ArrayList<Subject_Dt> list=Subject_Worker.showAllSubjectsByTid(t_id);
                    Calendar cal= Calendar.getInstance();
                    SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
                    String strdate = sdf.format(cal.getTime());
                    System.out.println(strdate);
               %>
          <header>
               <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-2">
                    <a class="navbar-brand" href="#">MCA Quiz</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                         <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                   <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="#">Generate Quiz</a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="#">See Results</a>
                              </li>
                              <li class="nav-item dropdown">
                                   <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</a>
                                   <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">New Quiz</a>
                                        <a class="dropdown-item" href="#">Change Quiz</a>
                                        <a class="dropdown-item" href="#">See All Exams</a>
                                   </div>
                              </li> 
                         </ul>
                     </div>
               </nav>
          </header>
          <hr>
          <main>
               <div class="container-fluid">
                    <div class="row"> 
                         <div class="col-md-1"></div>
                         <div class="col-md-10 card-block lighten-5 blue-grey blue-grey-text">
                              <div class="row jumbotron lighten-4 blue-grey blue-grey-text">
                                   <h3>Enter Details of the Exam</h3>
                              </div>
                              <form name="Aexam" method="POST" class="form-group col-form-legend" action="Action_Jsp\Exam_Action.jsp">
                                   <div class="row">
                                        <div class="col-md-6">
                                             <div class="form-group">
                                                  <label for="sem">Select Subject:</label>
                                                  <select class="form-control" id="sem" name="sub">
                                                       <option class="" value="" disabled>
                                                       <%
                                                       for(Subject_Dt sd:list){ 
                                                            
                                                            for(int i=1;i<=Integer.parseInt(sd.getSub_cos());i++){
                                                                 String arg=Integer.toString(sd.getSub_id())+","+Integer.toString(i);
                                                                 //int arg[]={sd.getSub_id(),i};
                                                                 //System.out.println(arg[0]+""+arg[1]);
                                                       %>
                                                            <option class="" value="<%=arg%>"><%=sd.getSub_name()+" CO "+i%></option>
                                                       <%
                                                            }    
                                                       }
                                                       %>
                                                  </select>
                                             </div>
                                        </div>
                                        <div class="offset-1"></div>
                                        
                                   </div>
                                   <div class="row">
                                        <div class="col-md-3">
                                             <div class="form-group">
                                                  <label for="date">Exam Date:</label>
                                                  <input type="date" name="ex_date" id="date" class="form-control" min="<%=strdate%>">
                                             </div>
                                        </div>
                                        <div class="offset-1"></div>
                                        <div class="col-md-3">
                                             <label for="duration">Enter Duration for Exam</label>
                                             <input type="time" name="ex_duration" id="duration" class="form-control" required>
                                        </div>
                                        <div class="offset-1"></div>
                                        
                                   </div>
                                   <div class="row">
                                        <div class="col-md-4">
                                             <label for="duration">Enter Number Of Questions in the Exam</label>
                                        </div>
                                        <div class="col-md-1">
                                             <input type="number" name="noofq" id="noofq" min="1" step="1" class="form-control" required>
                                        </div>    
                                   </div>
                                   <div class="row">
                                        <div class="form-group col-md-3">
                                             <input type="password" class="form-control " id="pass" name="ex_pwd" placeholder="Enter New Password" required>
                                        </div> 
                                        <div class="offset-1"></div>
                                        <div class="form-group col-md-3">
                                             <input type="password" class="form-control " id="pass1" name="pass1" placeholder="Re-type Password" required>
                                        </div>
                                   </div>
                                   <center><button type="submit" name="submit" value="add" class="btn btn-default blue-grey"> >> Next >> </button></center>
                              </form> 
                         </div>
                    </div>
               </div>
          </main>
    </body>
</html>      
          <%}
               else{    
                    //session.invalidate();
                    session.setAttribute("err", "You are not logged in. Please Login to Continue");
                    response.sendRedirect("Logins/Teacher_login.jsp");
               }
          %>
          