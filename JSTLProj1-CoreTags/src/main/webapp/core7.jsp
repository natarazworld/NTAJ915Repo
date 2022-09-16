<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  define a variable having message -->

<c:set var="msg"  value="hello how are u ?"/>

<c:forTokens items="${msg}" delims="o" var="tkn">
   ${tkn} <br>

</c:forTokens>