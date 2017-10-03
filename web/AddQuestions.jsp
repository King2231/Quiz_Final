<%-- 
    Document   : AddQuestions
    Created on : 07-Aug-2017, 12:07:45
    Author     : King
--%>

<%@page import="com.quiz.POJO.Exam_Dt"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SPIT: Questions</title>
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
             int ex_id=Integer.parseInt(request.getParameter("id"));
             Exam_Dt ed=Exam_Worker.showExamById(ex_id);
             
             
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
                         <div class="col-md-10 card-block lighten-5 blue-grey blue-grey-text offset-md-1">
                              <div class="row jumbotron lighten-4 blue-grey blue-grey-text">
                                   <h3>Enter Questions</h3>
                              </div>
                              <div class="row">
                                   <div class="col-md-12">
                                        <form name="Aexam" method="POST" class="form-group col-form-legend" action="Action_Jsp\Question_Action.jsp">
                                             <input type="hidden" name="ex_id" value="<%=ed.getEx_id()%>">
                                             <input type="hidden" name="noofq" value="<%=ed.getNoofq()%>">
                                             <%
                                                  for(int i=1;i<=ed.getNoofq();i++){
                                             %>
                                             <div class="row">
                                                  <div class="col-md-3">
                                                       <button type="button" data-toggle="collapse" data-target="#demo<%=i%>" class="btn-link">Cick To Add Question <%=i%> </button>
                                                  </div>
                                             </div>
                                             <div id="demo<%=i%>" class="row collapse">
                                                  <div class="col-md-12">
                                                       <div class="row">
                                                            <div class="form-group col-md-12 ">

                                                                 <label for="comment">Enter Question<%=i%></label>
                                                                 <textarea class="form-control" rows="5" id="<%=i%>" required="" name="q<%=i%>"></textarea>
                                                            </div> 
                                                       </div>
                                                       <div class="row">
                                                            <div class="form-group col-md-3 ">
                                                                 <input type="text" name="optn1<%=i%>" required="" placeholder="Option 1">
                                                            </div>
                                                            <div class="form-group col-md-3 ">
                                                                 <input type="text" name="optn2<%=i%>" required="" placeholder="Option 2">
                                                            </div> 
                                                            <div class="form-group col-md-3 ">
                                                                 <input type="text" name="optn3<%=i%>" required="" placeholder="Option 3">
                                                            </div> 
                                                            <div class="form-group col-md-3 ">
                                                                 <input type="text" name="optn4<%=i%>" required="" placeholder="Option 4">
                                                            </div> 
                                                       </div>
                                                       <div class="row">
                                                            <div class="col-md-12">
                                                                 Select Correct Option
                                                            </div>
                                                       </div>
                                                       <div class="row">
                                                            <div class="col-md-3">
                                                                 <div class="radio">
                                                                      <label><input type="radio" name="optradio<%=i%>" value="1">Option 1</label>
                                                                 </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                 <div class="radio">
                                                                      <label><input type="radio" name="optradio<%=i%>" value="2">Option 2</label>
                                                                 </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                 <div class="radio">
                                                                      <label><input type="radio" name="optradio<%=i%>" value="3">Option 3</label>
                                                                 </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                 <div class="radio">
                                                                      <label><input type="radio" name="optradio<%=i%>" value="4">Option 4</label>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             </div>
                                             <%
                                                  }
                                             %>
                                             <center><button type="submit" name="submit" value="add" class="btn btn-default blue-grey"> Submit </button></center>
                                        </form>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </main>
    </body>
</html>

                         
