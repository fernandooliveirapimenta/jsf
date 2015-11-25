<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>


<html>
<head>
	<title>Configurações</title>
	
</head>
<link rel="stylesheet" type="text/css" href="formatacao/style.css">
	<body>
		<f:view>
		   <jsp:include page="template/menu.jsp"></jsp:include><br><br>
			<div id="divperdeu">
				
				<h1><h:outputText value="#{configuraBeans.jogadorService.nome}"/></h1>
				<h3>configure o jogo</h3>
				<h:form id="ajaxValidatorForm">
		       
		            <h:panelGrid columns="3" >
		                
		               <h:outputText value="Linha:" />
		                <h:inputText id="linha" value="#{configuraBeans.configuracao.linha}" required="true">
		                    <f:convertNumber integerOnly="true"/>
		                    <f:validateLongRange minimum="5" maximum="20"/>
		                    <rich:ajaxValidator event="onblur"/>
		                </h:inputText>
		                <rich:message style="color: red" for="linha"/>
		                
		                <h:outputText value="Coluna:" />
		                <h:inputText id="coluna" value="#{configuraBeans.configuracao.coluna}" required="true">
		                    <f:convertNumber integerOnly="true"/>
		                    <f:validateLongRange minimum="5" maximum="20"/>
		                    <rich:ajaxValidator event="onblur"/>
		                </h:inputText>
		                <rich:message style="color: red" for="coluna"/>
		                
		                <h:outputText value="Bomba:" />
		                <h:inputText id="bomba" value="#{configuraBeans.configuracao.bomba}" required="true">
		                    <f:convertNumber integerOnly="true"/>
		                    <f:validateLongRange minimum="2" maximum="25"/>
		                    <rich:ajaxValidator event="onblur"/>
		                </h:inputText>
		                <rich:message style="color: red"  for="bomba"/>
		            
		            </h:panelGrid><br>
		            <a4j:commandButton styleClass="btcon" value="jogar" action="#{configuraBeans.iniciaJogo()}" reRender="ajaxValidatorForm"/>
		        	
		    	</h:form>
	    	</div>
		</f:view>
	</body>
	<footer id="ft">
		<jsp:include page="template/footer.html"></jsp:include>
	</footer>
</html>