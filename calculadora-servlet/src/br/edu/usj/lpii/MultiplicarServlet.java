package br.edu.usj.lpii;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/MultiplicarServlet")
public class MultiplicarServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String e = request.getParameter("e");
        Integer valorE = Integer.valueOf(e);

        String f = request.getParameter("f");
        Integer valorF = Integer.valueOf(f);

        Integer resultado = valorE * valorF;

        PrintWriter saida = response.getWriter();
        saida.println("<html>");
        saida.println("<body>");
        saida.print("<h1>");
        saida.print(e);
        saida.print(" * ");
        saida.print(f);
        saida.print(" = ");
        saida.print(resultado);
        saida.print("</h1>");
        saida.println("</body>");
        saida.println("</html>");
    }
}
