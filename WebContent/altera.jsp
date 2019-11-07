<%@ page
	import="java.util.*,
br.com.pavlo.agenda.bd.*,
br.com.pavlo.agenda.modelo.*"%>
<html>
 <body>
 <% 
      ContatoDao d = new ContatoDao();
      Contato c = d.getContatoById(request.getParameter("id"));
 %>
          <form action="alteraContato">
          
              Id: <input type="text" name="id" value="<%=c.getId()%>" /><br />
              
              Nome: <input type="text" name="nome" value="<%=c.getNome()%>" /><br />

              E-mail: <input type="text" name="email"value="<%=c.getEmail()%>" /><br />

              Endereço: <input type="text" name="endereco"value="<%=c.getEndereco()%>" /><br />

              Data Nascimento: <input type="text" name="dataNascimento"value="<%=c.getDataNascimento()%>" /><br />

              <input type="submit" value="Altera!" />
         </form>
    </body>
</html>