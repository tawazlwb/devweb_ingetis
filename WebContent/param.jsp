<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nom = request.getParameter("nom");
	String prenom = request.getParameter("prenom");
	out.println("Bienvenue " + prenom + " " + nom + "!");
%>
</body>
</html>