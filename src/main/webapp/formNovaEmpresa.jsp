<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkServlet"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="${linkServlet}" method="post">
		
		Nome: <input type="text" name="nome"/>
		Data Abertura: <input type="text" name="data"/>
		<button type="submit">Enviar</button>
	
	</form>
</body>
</html>