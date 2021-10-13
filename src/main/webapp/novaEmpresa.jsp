<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
	<body>
		<c:if test="${not empty empresa}"> 
			Empresa ${empresa} cadastrada com sucesso!	
		</c:if>
		
		<c:if test="${empty empresa}"> 
			Nenhuma empresa cadastrada.
		</c:if>
		
		<h1>Lista de empresas:</h1>
	
	<ul>
		<c:forEach items="${ empresas }" var="empresa">
			<li> ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">editar</a>
			<a href="/gerenciador/removeEmpresa?id=${empresa.id}">remover</a>
			</li>
		</c:forEach>
	</ul>
	</body>
</html>