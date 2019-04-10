<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ikheiry.gestion.commerciale.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fiche Employe</title>
<style>
table, th, td {
	border: 1px solid black;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 4px 8px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: darkgray;
	color: white;
	border: 1px solid darkgray;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h1>Fiche Employee</h1>
	<form action="./employes" method="GET">

		<table>
			<col width="100">
			<col width="150">
			<tr>
				<td>N° Employe</td>
				<td><input type="text" name="employeeID"
					value="${employee.employeeID}"></td>
			</tr>
			<tr>
				<td>Nom</td>
				<td><input type="text" name="lastName"
					value="${employee.lastName}"></td>
			</tr>
			<tr>
				<td>Prenom</td>
				<td><input type="text" name="firstName"
					value="${employee.firstName}"></td>
			</tr>
		</table>
		
		<input type="hidden" name="currentPage" value="${currentPage}">
		
		<br>
		<input type="submit" name="submit" value="chercher">
		<input type="submit" name="submit" value="modifier">
		<input type="submit" name="submit" value="ajouter">
		<input type="submit" name="submit" value="supprimer">

	</form>

	<br>
	<br> List Employe :
	<br>
	<br>
	
	<table>
		<col width="100">
		<col width="150">
		<col width="150">
		<tr>
			<td>N° Employe</td>
			<td>Nom</td>
			<td>Prenom</td>
		</tr>
		<%! 
			public static <T> List<T> castList(Object obj, Class<T> clazz)
			{
			    List<T> result = new ArrayList<T>();
			    if(obj instanceof List<?>)
			    {
			        for (Object o : (List<?>) obj)
			        {
			            result.add(clazz.cast(o));
			        }
			        return result;
			    }
			    return null;
			}
		%>
		<%
			List<Employee> employees = castList(request.getAttribute("employes"), Employee.class);
			for (int i = 0; i < employees.size(); i++) {
		        Employee emp = employees.get(i);
		%>
		
		<tr>
			<td><% out.print(emp.getEmployeeID());%></td>
			<td><% out.print(emp.getFirstName());%></td>
			<td><% out.print(emp.getLastName());%></td>
		</tr>
		
		<%
			}
		%>
		
	</table>

	<br>
	<br>

	<%
	    int j = 1;
	    int count = (int) request.getAttribute("count");
	    int pagesCount = (int) Math.ceil((double) (count) / 10);
	    int currentPage = (int) request.getAttribute("currentPage");
	    if (pagesCount != 0) {
	%>
	<div class="pagination">
		<%
		    for (int i = 0; i < pagesCount; i++) {
		            // test actuel Page
		            if (i == currentPage) {
		%>
		<a
			href="employes?submit=chercher&currentPage=<% out.print(i);%>&page=<% out.print(j);%>&employeeID=${employee.employeeID}"
			class="active">
			<%
			    out.print(j);
			%>
		</a>
		<%
		    } else {
		%>
		<a
			href="employes?submit=chercher&currentPage=<% out.print(i);%>&page=<% out.print(j);%>&employeeID=${employee.employeeID}">
			<%
			    out.print(j);
			%>
		</a>
		<%
		    }
		            j++;
		        }
		%>
	</div>
	<%
	    }
	%>
</body>
</html>