import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/calculator.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String a = request.getParameter("numOne");
        String b = request.getParameter("numTwo");
        String operator = request.getParameter("operator");
        int sum = 0;

        if (operator.equals("add")) {
            sum = Integer.parseInt(a) + Integer.parseInt(b);
        }
        if (operator.equals("multiply")){
            sum = Integer.parseInt(a) * Integer.parseInt(b);
        }
        request.setAttribute("sum", sum);
        request.getRequestDispatcher("/results.jsp").forward(request, response);
    }
}
