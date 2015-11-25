<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastre-se</title>
<link rel="stylesheet" type="text/css" href="formatacao/style.css">
</head>
<body>
 	<f:view>
 	  <jsp:include page="template/menu.jsp"></jsp:include><br><br>
		<div id="divperdeu">
		  <jsp:include page="formulario/frmcadastra.jsp"></jsp:include>
		</div>
	</f:view>
	
 </body>
 	<footer  id="ft">
		<jsp:include page="template/footer.html"></jsp:include>
	</footer>
</html>