<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<html>
<link rel="stylesheet" type="text/css" href="../formatacao/style.css">
	<body>
		   
		   
		   <h3>atualize seus Pontos</h3>
				<h:form id="frmpontos">
					<label>pontos:</label><h:inputText value="#{configuraBeans.jogadorService.pontos}" readonly="true" /><br>
					<h:commandButton styleClass="btcon" value="Atualizar Pontos" action="#{jogadorBeans.atualizaPontos()}" /><br><br>
					<h:commandButton styleClass="btcon" value="Jogar novamente" action="#{jogadorBeans.jogarNovamente}" /><h3></h3>
			    	<h3>
						<rich:messages styleClass="msg"></rich:messages>
					</h3>
		    	</h:form>
		    
		</body>
</html>