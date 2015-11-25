<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="../formatacao/style.css">
  	<body>
  			<h:form id="menu">
	  			<rich:toolBar styleClass="menu">
		                <rich:menuItem action="#{menuBeans.irRanking()}">
		                        <h:outputText value="Ranking"></h:outputText>
		                </rich:menuItem>
		                 <rich:menuItem action="#{menuBeans.irVencedores()}">
		                        <h:outputText value="Vencedores"></h:outputText>
		                </rich:menuItem>
		                <rich:menuItem action="#{menuBeans.irLogin()}">
		                        <h:outputText value="Login"></h:outputText>
		                </rich:menuItem>
		                 <rich:menuItem action="#{menuBeans.irCadastro()}">
		                        <h:outputText value="Cadastre-se"></h:outputText>
		                </rich:menuItem>
		                <rich:menuItem action="#{jogadorBeans.sair()}">
		                        <h:outputText value="Sair"></h:outputText>
		                </rich:menuItem>
	       		</rich:toolBar>
	       		<h:outputText id="log" value="#{configuraBeans.jogadorService.nome}"></h:outputText>
  			</h:form>
  	</body>
</html>
