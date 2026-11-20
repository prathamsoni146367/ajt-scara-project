import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AssassinServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String action = request.getParameter("action");
        AssassinDAO dao = new AssassinDAO();

        if ("insert".equals(action)) {
            Assassin a = new Assassin();
            a.setName(request.getParameter("name"));
            a.setSpecialization(request.getParameter("specialization"));
            a.setRanking(request.getParameter("ranking"));
            a.setStatus(request.getParameter("status"));
            dao.insertAssassin(a);
        } else if ("update".equals(action)) {
            Assassin a = new Assassin();
            a.setAssassinId(Integer.parseInt(request.getParameter("assassinId")));
            a.setName(request.getParameter("name"));
            a.setSpecialization(request.getParameter("specialization"));
            a.setRanking(request.getParameter("ranking"));
            a.setStatus(request.getParameter("status"));
            dao.updateAssassin(a);
        } else if ("delete".equals(action)) {
            int assassinId = Integer.parseInt(request.getParameter("assassinId"));
            dao.deleteAssassin(assassinId);
        }

        response.sendRedirect("assassins-admin.jsp");
    }
}
