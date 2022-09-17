<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>

<!--  Load xml file -->
<c:import var="doc"  url="orders.xml"/>

<!--  parse the xml file -->
<x:parse doc="${doc}" var="pdoc"/>

<!--  print all order items and prices -->
 <h1> all orders are </h1>
<x:forEach var="ord"  select="$pdoc/orders/order">
    name:: <x:out select="$ord/name"/> 
    price:: <x:out select="$ord/price"/>
     <br>
</x:forEach>