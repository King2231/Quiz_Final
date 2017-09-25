<%-- 
    Document   : AddStudent
    Created on : 03-Aug-2017, 17:47:33
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/logo_png.png" type="favicon/ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCA :Student Registration</title>
        <script type="text/javascript">
               function validateForm() {
                    var x = document.forms["form1"]["email"].value;
                    var atpos = x.indexOf("@");
                    var dotpos = x.lastIndexOf(".");
                    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
                         alert("Not a valid e-mail address");
                         return false;
                    }
                    else{
                         var a=document.forms["form1"]["pass"].value;
                         var b=document.forms["form1"]["pass"].value;
                         var rgx = [
                                        /.{6,30}/,
                                        /[A-Z]/,
                                        /[a-z]/,
                                        /[0-9]/, 
                                        /[@#$&*^%!+=\/\\[\]|?.,<>)(;:'"~`]/
                                   ];
                         /*for (var i = 0; i < rgx.length; i++) {
                              if (rgx[i].test(a) === false) {
                                   alert("Password Policy Violated. Your Password must contain :\n1. Atleast 6 characters. \n2. Atleast one uppercase character. \n3. Atleast one lowercase character.")
                                   return false;
                              }
                         }*/
                         if(a!=b){
                              return false
                         }
                         else{
                              var phone = document.forms["form1"]["phone"].value;
                              var phoneNum = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
                              if(phone.value.match(phoneNum)) {
                                   return true;
                              }
                              else {
                                   document.getElementById("phone").className = document.getElementById("phone").className + " error";
                                   return false;
                              }
                         }
                    }
               }
</script>
    </head>
    <body>
         <header>        
               <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-2">
                    <a class="navbar-brand" href="#">
                         MCA Quiz
                    </a>
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
                                   <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions </a>
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
          <hr><br>
          <div class="container">
               <div class="row">
                    <div class=" col-md-4">
                         <h1>Student Registration</h1><hr style="color: #4B515D"><hr style="color: #4B515D">
                    </div>
               </div>
               <br>
               <form name="form1" method="POST" action="Action_Jsp\Student_Action.jsp" onsubmit="return validateForm();">
                    <div class="row">
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control" id="name" name="sname" placeholder="Enter Name" required>
                         </div>
                         <div class="col-md-1"></div>
                         <!--div class="form-group col-md-5">
                              <input type="text" class="form-control " id="ucid" name="ucid" placeholder="Enter UCID" required>
                         </div-->
                    </div><br>
                    <!--div class="row">
                         
                         <div class="col-md-5">
                              <div class="form-group">
                                   <label for="sel1">Select Semester:</label>
                                   <select class="form-control" id="sel1" name="sem">
                                             <option value="Sem 1">Sem 1</option>
                                             <option value="Sem 2">Sem 2</option>
                                             <option value="Sem 3">Sem 3</option>
                                             <option value="Sem 4">Sem 4</option>
                                             <option value="Sem 5">Sem 5</option>
                                             <option value="Sem 6">Sem 6</option>
                                        </select>
                              </div>
                         </div>
                    </div--><br>
                    <div class="row">
                         <div class="form-group col-md-5">
                              <input type="password" class="form-control " id="pass" name="pass" placeholder="Enter New Password" required>
                         </div> 
                         <div class="col-md-1"></div>
                         <div class="form-group col-md-5">
                              <input type="password" class="form-control " id="pass1" name="pass1" placeholder="Re-type Password" required>
                         </div>
                    </div><br>
                    <div class="row">
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control " id="email" name="email" placeholder="Enter Email Id" required>
                         </div> 
                         <div class="col-md-1"></div>
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control " id="phone" name="phone" placeholder="Enter Phone-Number" required>
                         </div>
                    </div><br>
                    <div class="row">
                         <div class="container col-md-4">
                              <button type="submit" class="btn btn-default blue-grey" value="add" name="submit">Submit</button>
                         </div>
                    </div>  
               </form>
          </div>
          <footer>
        
    </footer>
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>
