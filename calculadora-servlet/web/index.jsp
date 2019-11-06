<%--
  Created by IntelliJ IDEA.
  User: Vitor Ruan
  Date: 05/11/2019
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculadora</title>
  </head>
  <body>
  <form action="SomarServlet">
    <fieldset>
      <legend>Somar</legend>
    <label for="a" >Valor a:</label>
    <input type="text" name="a" id="a"/>
    <br />
    <label for="b">Valor b:</label>
    <input type="text" name="b" id="b"/>
    <br />
    <input type="submit" value="SomarServlet" />
    </fieldset>
  </form>

  <form action="SubtracaoServlet">
    <fieldset>
      <legend>Somar</legend>
      <label for="c" >Valor c:</label>
      <input type="text" name="c" id="c"/>
      <br />
      <label for="d">Valor d:</label>
      <input type="text" name="d" id="d"/>
      <br />
      <input type="submit" value="SubtracaoServlet" />
    </fieldset>
  </form>

  <form action="MultiplicarServlet">
    <fieldset>
      <legend>Multiplicar</legend>
      <label for="e" >Valor e:</label>
      <input type="text" name="e" id="e"/>
      <br />
      <label for="f">Valor f:</label>
      <input type="text" name="f" id="f"/>
      <br />
      <input type="submit" value="MultiplicarServlet" />
    </fieldset>
  </form>

  <form action="DividirServlet">
    <fieldset>
      <legend>Dividir</legend>
      <label for="g" >Valor g:</label>
      <input type="text" name="g" id="g"/>
      <br />
      <label for="h">Valor h:</label>
      <input type="text" name="h" id="h"/>
      <br />
      <input type="submit" value="DividirServlet" />
    </fieldset>
  </form>
  <script>
    function op() {
      var opera = "SomarServlet";
      return opera
    }
  </script>
  </body>
</html>
