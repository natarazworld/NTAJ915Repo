

<b> start of a.jsp</b> <br>

  <%
     int a=10;
     int b=20;
      b=a*a;
  %>

<jsp:forward page="b.jsp">
     <jsp:param value="CRJ" name="bkName"/>
     <jsp:param value="<%=b%>" name="price"/>

</jsp:forward>
 <br>

<b> end of a.jsp</b> <br>