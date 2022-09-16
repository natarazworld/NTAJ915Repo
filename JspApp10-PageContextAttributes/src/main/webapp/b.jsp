

<center><b> from b.jsp</b> </center>

<!-- read pageContext attribute values -->
 <b> page scope attribute value(attr1) <%=pageContext.getAttribute("attr1") %> </b> <br>
 <b> request scope attribute value(attr2) <%=pageContext.getAttribute("attr2",PageContext.REQUEST_SCOPE) %> </b> <br>
  <b> session scope attribute value(attr3) <%=pageContext.getAttribute("attr3",PageContext.SESSION_SCOPE) %> </b> <br>
  <b> application scope attribute value(attr4) <%=pageContext.getAttribute("attr4",PageContext.APPLICATION_SCOPE) %> </b> <br>
  
  <!-- forward to  c.jsp -->
 <jsp:forward page="c.jsp"/>
 
 