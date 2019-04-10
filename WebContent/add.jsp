<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!// metode interne
    public double addition(double a, double b) {
        return a + b;
    }

    public double soustraction(double a, double b) {
        return a - b;
    }%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	    // code principal
	    double a = request.getParameterMap().containsKey("a") ? Double.parseDouble(request.getParameter("a")) : 0;
	    double b = request.getParameterMap().containsKey("b") ? Double.parseDouble(request.getParameter("b")) : 0;
	    out.println("La somme est " + addition(a, b));
	%>
	<h1>Nous sommes le :</h1>
	<%=new SimpleDateFormat("dd MMMM yyyy HH:mm:ss").format(new Date())%>
</body>
</html>