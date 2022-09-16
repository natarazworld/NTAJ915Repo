
<%@page  isELIgnored="false"  %>

user request param value ::  ${param.user } <br>
addrs request param values :: ${paramValues.addrs[0] } , ${paramValues.addrs[1] }
<hr>
<br>
user-agent request header value ::  ${header['user-agent'] } <br>
accept request header values :: ${headerValues.accept[0] } , ${headerValues.accept[1] }

<hr>
 Session id  Cookie name :: ${cookie.JSESSIONID.name } <br>
 Session id value  :: ${cookie.JSESSIONID.value } <br>
 
 <br>
  dbuser context param name :: ${initParam.dbuser } <br>
  dbpwd context param value :: ${initParam.dbpwd } <br>
  
 




