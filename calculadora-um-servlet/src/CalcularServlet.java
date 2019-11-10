import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CalcularServlet")
public class CalcularServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = request.getParameter("a");
        Integer valorA = Integer.valueOf(a);

        String b = request.getParameter("b");
        Integer valorB = Integer.valueOf(b);

        Integer resultado = 0;

        String operador = request.getParameter("operador");
        String operacao = "";
        switch (operador) {
            case "Somar":
                resultado = valorA + valorB;
                operacao = "+";
                break;
            case "Diminuir":
                resultado = valorA - valorB;
                operacao = "-";
                break;
            case "Dividir":
                resultado = valorA / valorB;
                operacao = "/";
                break;
            case "Multiplicar":
                resultado = valorA * valorB;
                operacao = "*";
                break;
        }


        PrintWriter saida = response.getWriter();
        saida.println("<html>");
        saida.println("<body>");
        saida.print("<h1>");
        saida.print(a);
        saida.print(operacao);
        saida.print(b);
        saida.print(" = ");
        saida.print(resultado);
        saida.print("</h1>");
        saida.println("</body>");
        saida.println("</html>");
    }
}
