<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page 
    import="java.util.*,
br.com.pavlo.agenda.bd.*,
br.com.pavlo.agenda.modelo.*" %>
<body>
    <%
       String idString = request.getParameter("id");
       Long id = Long.parseLong(idString);
       ContatoDao dao = new ContatoDao();
       Contato c = new Contato();
       c.setId(id);
       dao.remove(c);
       %>
       <p>Contato removido!</p>
</body>
</html>