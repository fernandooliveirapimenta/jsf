<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<html>
<link rel="stylesheet" type="text/css" href="../formatacao/style.css">
	<body>
	   <h2>Cadastre-se</h2>
				<h:form id="frmusuario">
		            <label>nome:</label><h:inputText  value="#{configuraBeans.jogadorService.nome}" required="true"/> 
					<label>login:</label><h:inputText value="#{configuraBeans.jogadorService.login}"  required="true" />
					<label>senha:</label><h:inputSecret value="#{configuraBeans.jogadorService.senha}" required="true" /><br><br>
					<a4j:commandButton styleClass="btcon" value="salvar" action="#{jogadorBeans.salvar}" reRender="frmusuario"/><h3></h3>
			    	<h3>
						<rich:messages styleClass="msg"></rich:messages>
					</h3>
		    	</h:form>
	</body>
</html>