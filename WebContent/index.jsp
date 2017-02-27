<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Proiect Web Test</title>
<style>
table, th, td {
    border: 1px solid #333;
    border-collapse: collapse;
    text-align: right;
    padding: 3px;
}
</style>
</head>
<body>
<h1>TI-P Test Website</h1>
<section>
	<h2>Calcul matematic</h2>
	<table>
		<thead>
			<tr>
				<th>x</th>
				<th>x<sup>2</sup></th>
				<th>x<sup>3</sup></th>
				<th>log(x)</th>
				<th>e<sup>x</sup></th>
			</tr>
		</thead>
		<tbody>
			<%
				DecimalFormat numberFormatter = new DecimalFormat("#0.00");
			    for (int i = 1; i <= 10; ++i) {
					%><tr><td><%=i%></td><%
					%><td><%=i*i%></td><%
					%><td><%=i*i*i%></td><%
					%><td><%=numberFormatter.format(Math.log10(i))%></td><%
					%><td><%=numberFormatter.format(Math.exp(i))%></td></tr><%
			    }
			%>
		</tbody>
	</table>
</section>
</body>
</html>