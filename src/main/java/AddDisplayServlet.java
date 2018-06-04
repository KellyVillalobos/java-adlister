import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name ="AddDisplayServlet", urlPatterns = "/ads")
public class AddDisplayServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Ad> allAds = DaoFactory.getAdsDao().all();
        request.setAttribute("allAds", allAds);
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);

    }

}
