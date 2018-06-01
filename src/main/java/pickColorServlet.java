import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "pickColorServlet", urlPatterns ="/color")
public class pickColorServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        request.getRequestDispatcher("/pickcolor.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException, ServletException {
        String color = request.getParameter("color");
        request.setAttribute("color", color);

        request.getRequestDispatcher("/favorite.jsp").forward(request, response);

    }
}
