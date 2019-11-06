package br.edu.usj.lpii;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DividirServlet")
public class DividirServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String g = request.getParameter("g");
        Integer valorG = Integer.valueOf(g);

        String h = request.getParameter("h");
        Integer valorH = Integer.valueOf(h);

        Integer resultado = valorG / valorH;

        PrintWriter saida = response.getWriter();
        saida.println("<html>");
        saida.println("<body>");
        saida.print("<h1>");
        saida.print(g);
        saida.print(" / ");
        saida.print(h);
        saida.print(" = ");
        saida.print(resultado);
        saida.print("</h1>");
        saida.println("</body>");
        saida.println("</html>");
    }
}
