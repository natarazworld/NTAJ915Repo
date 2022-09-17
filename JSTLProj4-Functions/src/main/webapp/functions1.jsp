<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>

<c:set  var="msg"  value="Hello , how are u?"/>

length ::  ${fn:length(msg) } <br>
uppercase :: ${fn:toUpperCase(msg) } <br>
lowercase :: ${fn:toLowerCase(msg) } <br>
substring :: ${fn:substring(msg,0,6) } <br>
 contains "how"?  ${fn:contains(msg,"how") } <br>




    