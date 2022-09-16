<%!
   public   String   showWishMessage(String user){
// 	    int abc=100;
	  //  get System date and time
	    java.time.LocalDateTime  ldt=java.time.LocalDateTime.now();
	  //get current  hour of the day
	  int hour=ldt.getHour();  //24 hours format
	   //generate the wish message
	   if(hour<12)
		    return  "Good Morning::"+user;
	   else if(hour<16)
		   return "Good AfterNoon::"+user;
	   else if(hour<20)
		   return "Good Evening ::"+user;
	   else
		    return  "Good Night ::"+user;
   }

%>

<%--   <h1  style="color:red;text-align:center">Welcome to  Java Server Pages </h1> --%>

  <b> System Date and time ::  <%=java.time.LocalDateTime.now() %></b>  <br>
  
  <% String user="raja" ;%>
  
  <br> Wish Message is :: <!--  <%=showWishMessage(user) %>  -->
  


