<%@ page
	import="java.util.*,
br.com.pavlo.agenda.bd.*,
br.com.pavlo.agenda.modelo.*"%>

<html>
<body>
	<table border=1>
	<tr>
	    <td>Nome</td>
	    <td>e-Mail</td>
	    <td>Endereço</td>
	    <td>DataNascimento</td>
	    <%
			ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		for (Contato contato : contatos ) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getDataNascimento().getTime()%></td>
			<td>
			    <a href="remove.jsp?id=<%=contato.getId()%>">
			       Remover
			    </a>
		</td>
		    <td>
		        <a href="altera.jsp?id=<%=contato.getId()%>">
		           Altera
		        </a>
		</td>
		</tr>
		
		<%
			}
		%>
	</table>
</body>
</html>