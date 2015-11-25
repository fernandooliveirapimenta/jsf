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
<title>Vencedor</title>
<link rel="stylesheet" type="text/css" href="formatacao/style.css">
</head>
<body>
	<f:view>
	 <jsp:include page="template/menu.jsp"></jsp:include><br>
		<div id="divcon">
			<h:form>
			<h1>vencedores</h1>
				<br/>
					<rich:dataTable value="#{jogadorBeans.jogadorLogadoService.listarVencedores()}" var="usuario" cellspacing="0" cellpadding="0" border="1">
						<h:column>
							<f:facet name="header">
							<h:outputText value="Nome"/>
							</f:facet>
							<h:outputText value="#{usuario.toString()}"></h:outputText>
						</h:column>
					</rich:dataTable>
			</h:form>
		</div>
	</f:view>
</body>
	<footer  id="ft">
		<jsp:include page="template/footer.html"></jsp:include>
	</footer>
</html>