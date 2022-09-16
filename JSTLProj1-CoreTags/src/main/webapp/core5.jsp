<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> all request param names and values</h1>
 <c:forEach var="p" items="${paramValues}">
       request param name :: ${p.key }
       request param  values ::
         <c:forEach var="pv"  items="${p.value}">
                    ${pv },
         </c:forEach>
     <br>
 </c:forEach>