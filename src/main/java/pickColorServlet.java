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
        String color1 = request.getParameter("color1");
        String color2 = request.getParameter("color2");
        request.setAttribute("color1", color1);
        request.setAttribute("color2", color2);

        request.getRequestDispatcher("/favorite.jsp").forward(request, response);

    }
}
