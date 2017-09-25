/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function getQ(i) {
               var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                         document.getElementById("question").innerHTML =
                         this.responseText;
                    }
               };
               var str0="#";
               var str1 = "Quiz_Page.jsp?id=";
               var str2 =i;
               var res = str1.concat(str2);
               var res2=str0.concat(str2);
          
          xhttp.open("GET",res, true);
          xhttp.send();
          $('.btn').removeClass('cyan');     
          $(res2).addClass('cyan');
          }
function red(i) {
               var str0="#";
               var str2 =i;
               var res2=str0.concat(str2);
          $(res2).removeClass('blue-grey');     
          $(res2).toggleClass('red');
          }
function subject() {
               
     var xhttp = new XMLHttpRequest();
               xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                         document.getElementById("co").innerHTML =
                         this.responseText;
                    }
               };
               var str1 = "subject.jsp?id=1";
               /*var str2 =i;
               var res = str1.concat(str2);*/
          xhttp.open("GET",str1, true);
          xhttp.send();
          }
