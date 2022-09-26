<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
        
/*         String name = "c, , d, b, c, , , b, d, a, , a, b, , , a, a, b, , , ";
        String aa = String.valueOf(name).replaceAll(" ,", " NA,");
        String bb = String.valueOf(aa).replaceAll("NA,", " ");
        pageContext.setAttribute("name", name);
        pageContext.setAttribute("aa", aa);
        pageContext.setAttribute("bb", bb);
        out.print(pageContext.findAttribute("name"));
        out.print(pageContext.findAttribute("aa"));
        out.print(pageContext.findAttribute("bb")); */
%>
  <%  String[] textFields = {"FirstName","LastName","Address","City","Zip"};
      for(int j=0; j<textFields.length; j++){     %>
      <TR>    <TD> <%=textFields[j]%>:                       </TD>
              <TD> <INPUT TYPE=TEXT NAME=<%=textFields[j]%>> </TD>
     </TR>
 <%  }   %>
 
 
<%--${name}<br>
${aa}<br>
${bb} --%>
<br>
STRING NAME is: ${Name}<br>
STRING AA is: ${AA}<br>
STRING BB is: ${BB}<br>
STRING CC is: ${CC}

 <% String x= (String)request.getAttribute("BB"); %>
<script>console.log(<%= x %>)</script>
<%= x %>
</body>
</html>