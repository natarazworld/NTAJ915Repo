<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:catch  var="e">
<jsp:scriptlet>
   java.util.Date d=null;
     int year=d.getYear();
    out.println("year is ::"+year);
</jsp:scriptlet>
</c:catch>
 <b> raised exception is :: ${e}</b>
