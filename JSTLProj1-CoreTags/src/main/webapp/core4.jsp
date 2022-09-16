<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>


<!-- As trandtional for loop -->
 <table border="1" bgcolor="cyan" align="center">
     <c:forEach var="i" begin="1" end="10" step="1">
        <tr>
           <td>2 *  ${i } =  </td>
           <td>${2* i } </td>
        </tr>

     </c:forEach>
</table>


<!-- As  Eanched for loop -->
<b> names are </b>
<jsp:scriptlet>
         String names[]=new String[]{"raja","rani","rajesh","ramesh"};
         request.setAttribute("namesInfo",names);
</jsp:scriptlet>
  <c:forEach var="nam" items="${namesInfo}">
            ${nam},
  </c:forEach>
  <br>
  <b> friends are </b>
  <jsp:scriptlet>
     <![CDATA[
         List<String> friendsList=new ArrayList();
         friendsList.add("karam"); friendsList.add("rama"); friendsList.add("chari");
         request.setAttribute("friendsInfo",friendsList);
         ]]>
</jsp:scriptlet>
  <c:forEach var="dost" items="${friendsInfo}">
            ${dost},
  </c:forEach>