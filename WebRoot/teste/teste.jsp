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
<title>Bem vindo!</title>
<link rel="stylesheet" type="text/css" href="formatacao/style.css">
</head>
<body>
 	<f:view>
 		<h:form id="myform">
				 <h:panelGrid>
		    	    	<h:inputText id="idnome" value="#{menuBeans.nome}">
		    	   			<a4j:support event="onkeyup" reRender="fer" />
		    	    	</h:inputText>
					
						<h:outputText id="fer" value="#{menuBeans.nome}"/> <br>
		    	 </h:panelGrid>
		    	 
		    	 <h:outputText value="Ajax status:"/>
		    	 <a4j:status id="status" startText="Em progresso.." stopText="Completo" />
				 <rich:spacer height="5" />
				 <h:form id="teste">
				 	<a4j:commandButton eventsQueue="foo" value="Ir" />
				 </h:form>
			</h:form>
			<a4j:region id="rb">
				<h:form id="rbform">
					<a4j:commandButton eventsQueue="foo2" value="Ajax 2" />
				</h:form>
				
				<a4j:status>
					<f:facet name="start">
						<h:graphicImage value="/images/ajax/ajax_process.gif"></h:graphicImage>
					</f:facet>
				</a4j:status>
			</a4j:region>
			
	</f:view>
 </body>
</html>