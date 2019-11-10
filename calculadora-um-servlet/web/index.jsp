<%--
  Created by IntelliJ IDEA.
  User: Vitor Ruan
  Date: 09/11/2019
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculadora em um servlet</title>
  </head>
  <body>
  <h1 style="text-align: center">Calculadora</h1>
  <form action="CalcularServlet">
    <fieldset>
      <legend>Calculadora</legend>
      <label for="a" >Valor a:</label>
      <input type="text" name="a" id="a"/>
      <br />
      <label for="b">Valor b:</label>
      <input type="text" name="b" id="b"/>
      <br />
      <input type="submit" name="operador" id="operadorSomar" value="Somar" />
      <input type="submit" name="operador" id="operadorDiminuir" value="Diminuir" />
      <input type="submit" name="operador" id="operadorDividir" value="Dividir" />
      <input type="submit" name="operador" id="operadorMultiplicar" value="Multiplicar" />
    </fieldset>
  </form>
  </body>
</html>
