import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = (String) request.getSession().getAttribute("isLoggedIn");
        if (userName != null) {
            request.setAttribute("loggedInUsername", userName);
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request,response);

        } else {
            response.sendRedirect("/login");
        }



    }


}
