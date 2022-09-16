<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> all request request header names and values</h1>
 <c:forEach var="h" items="${headerValues}">
       request header name :: ${h.key }
       request header values ::
         <c:forEach var="hv"  items="${h.value}">
                    ${hv },
         </c:forEach>
     <br>
 </c:forEach>