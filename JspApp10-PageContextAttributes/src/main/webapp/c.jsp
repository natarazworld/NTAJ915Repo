<center><b> from c.jsp</b> </center>

<!-- read pageContext attribute values -->
 <b> page scope attribute value(attr1) <%=pageContext.findAttribute("attr1") %> </b> <br>
 <b> request scope attribute value(attr2) <%=pageContext.findAttribute("attr2") %> </b> <br>
  <b> session scope attribute value(attr3) <%=pageContext.findAttribute("attr3") %> </b> <br>
  
  <b> application scope attribute value(attr4) <%=pageContext.findAttribute("attr4") %> </b> <br>
  
  
  