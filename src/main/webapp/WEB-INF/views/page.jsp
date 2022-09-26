<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="addEmployee" modelAttribute="employee">
    <form:label path="name">Name</form:label>
    <form:input path="name" />
    
    <form:label path="id">Id</form:label>
    <form:input path="id" />
    
    <input type="submit" value="Submit" />
</form:form>

</body>
</html>