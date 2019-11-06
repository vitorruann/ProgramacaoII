package br.edu.usj.lpii;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SubtracaoServlet")
public class SubtracaoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String c = request.getParameter("c");
        Integer valorC = Integer.valueOf(c);

        String d = request.getParameter("d");
        Integer valorD = Integer.valueOf(c);

        Integer resultado = valorC - valorD;

        PrintWriter saida = response.getWriter();
        saida.println("<html>");
        saida.println("<body>");
        saida.print("<h1>");
        saida.print(c);
        saida.print(" - ");
        saida.print(d);
        saida.print(" = ");
        saida.print(resultado);
        saida.print("</h1>");
        saida.println("</body>");
        saida.println("</html>");
    }
}
