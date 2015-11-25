<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<html>
<link rel="stylesheet" type="text/css" href="../formatacao/style.css">
	<body>
	<h2>Login</h2>
	  <h:form id="frmlogin">
			<h3>
				<rich:messages styleClass="msg"></rich:messages>
			</h3>
						
			<label>usuario:</label><h:inputText value="#{configuraBeans.jogadorService.login}"  />
			<label>senha:</label><h:inputSecret value="#{configuraBeans.jogadorService.senha}"  /><br><br>
			<h:commandButton styleClass="btcon" value="logar" action="#{jogadorBeans.logar}"/>
			<a4j:commandButton id="cadastra" styleClass="btlogin" value="cadastrar-se" action="#{menuBeans.irCadastro()}" reRender="frmlogin"/><br>
	      
	  	</h:form>
	       
	</body>
</html>