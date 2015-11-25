<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>

<html>
<head>
<title>Jogo</title>
</head>
<link rel="stylesheet" type="text/css" href="formatacao/style.css">
<body>
	<f:view>
		<jsp:include page="template/menu.jsp"></jsp:include><br>
		<div id="divcon">
			
			<a4j:outputPanel id="paneljogo" ajaxRendered="true">
				<h:form id="jogo">
					
					<a4j:outputPanel id="table">
						<h2>
							
							<h:outputText styleClass="txts"
								value="#{configuraBeans.jogadorService.nome}" />
							<br> <label>pontos:</label>
							<h:outputText styleClass="txts"
								value="#{configuraBeans.jogadorService.pontos}" />
							<br>
						</h2>
						<table>
							<c:forEach var="i" begin="1" end="${fn:length(configService.tabuleiro)-1}">
								<tr>
									<c:forEach var="j" begin="1" end="${fn:length(configService.tabuleiro[i])-1}">
											<td x="${i}" y="${j}" name="btnJogo" class="btn">${configService.tabuleiro[i][j]}</td>
									</c:forEach>
								</tr>
							</c:forEach>
						</table>
					</a4j:outputPanel>
					
					<h:inputText style="display:none" styleClass="txtlinha"
						value="#{jogadaBeans.clickLinha}" />
					<h:inputText style="display:none" styleClass="txtcoluna"
						value="#{jogadaBeans.clickColuna}" />
					
					<a4j:jsFunction action="#{jogadaBeans.jogada}" ajaxSingle="true" oncomplete="bindBtn();" limitToList="true" name="funjogada" reRender="table">
						<a4j:actionparam name="clickLinha" assignTo="#{jogadaBeans.clickLinha}"></a4j:actionparam>
						<a4j:actionparam name="clickColuna" assignTo="#{jogadaBeans.clickColuna}"></a4j:actionparam>
					</a4j:jsFunction> 
				</h:form>
			</a4j:outputPanel>

		</div>
	</f:view>
</body>
<footer id="ft">
	<jsp:include page="template/footer.html"></jsp:include>
</footer>
 <script src="scripts/jogo.js"></script> 

</html>