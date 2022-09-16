<%@page  isELIgnored="false"  %>

<%
  pageContext.setAttribute("attr4","val4",PageContext.PAGE_SCOPE);
%>

<h1> Attribute values are</h1>
 <br>
   <b> attr1(request) value :: ${requestScope.attr1}</b>
 <br>  
  <b> attr2(session) value :: ${sessionScope.attr2}</b>
 <br>  
 <b> attr3(application) value :: ${applicationScope.attr3}</b>
 <br>  
 <b> attr4(page) value :: ${pageScope.attr4}</b>
 
 <hr>
 <h1> Attribute values are</h1>
 <br>
   <b> attr1(request) value :: ${attr1}</b>
 <br>  
  <b> attr2(session) value :: ${attr2}</b>
 <br>  
 <b> attr3(application) value :: ${attr3}</b>
 <br>  
 <b> attr4(page) value :: ${attr4}</b>
 
 