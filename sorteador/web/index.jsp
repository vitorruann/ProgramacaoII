<%--
  Created by IntelliJ IDEA.
  User: Vitor Ruan
  Date: 05/11/2019
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="br.edu.usj.lpII.Calendario" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello world JSP</title>
  </head>
  <body>
  <h1>Aqui é HTML!</h1>
  <%
    String mensagem = "Hello World";
    int a = 10;
    int b = 20;

    int resultado = a + b;
    out.println(mensagem);
  %>

  <h2>
    <%= a %> + <%= b%>
    <br/>
    O resultado é:
    <%= resultado %>
  </h2>

  <%
    Calendario c = new Calendario();
    out.println(c.diaHoraAtual());
  %>
  <h1>
  <%
    ArrayList<Long> arrayNumeros = new ArrayList<>();
    for (int i = 0; i < 3 ; i++) {

      arrayNumeros.add(i, Math.round(Math.random() * 5) % 60);

    }
    out.println(arrayNumeros);
    out.println("iniciais");
    int j =1;
        for (int ii = 0; ii < arrayNumeros.size() ; ii++) {
          for (; j < arrayNumeros.size() ; j++) {
            if (ii == j) {
            }else {
              while (arrayNumeros.get(ii).toString().equals(arrayNumeros.get(j).toString())) {
                arrayNumeros.remove(j);
                arrayNumeros.add(j, Math.round(Math.random() * 5) % 60);
                out.println(arrayNumeros);


              }
              while (arrayNumeros.get(ii).toString().equals("0")) {
                arrayNumeros.remove(ii);
                arrayNumeros.add(ii, Math.round(Math.random() * 5) % 60);
                out.println(arrayNumeros);
              }

            while (arrayNumeros.get(j).toString().equals("0")) {
              arrayNumeros.remove(j);
              arrayNumeros.add(j, Math.round(Math.random() * 5) % 60);
              out.println(arrayNumeros);

              }
              while (arrayNumeros.get(ii).toString().equals(arrayNumeros.get(j).toString())) {
                arrayNumeros.remove(ii);
                arrayNumeros.add(ii, Math.round(Math.random() * 5) % 60);
                out.println(arrayNumeros);
              }
              while (arrayNumeros.contains(arrayNumeros.get(ii))){
                arrayNumeros.add(ii, Math.round(Math.random() * 5) % 60);
              }
            }
            out.println(arrayNumeros);
          }
        }
    out.println(arrayNumeros);

  %>
  </h1>
  </body>
</html>
