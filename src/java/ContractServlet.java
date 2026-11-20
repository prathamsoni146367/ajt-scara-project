import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContractServlet extends HttpServlet {

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
        ContractDAO dao = new ContractDAO();

        if ("insert".equals(action)) {
            Contract c = new Contract();
            c.setAssassinId(Integer.parseInt(request.getParameter("assassinId")));
            c.setClientName(request.getParameter("clientName"));
            c.setTargetName(request.getParameter("targetName"));
            c.setLocation(request.getParameter("location"));
            c.setReward(Double.parseDouble(request.getParameter("reward")));
            c.setStatus(request.getParameter("status"));
            dao.insertContract(c);
        } else if ("update".equals(action)) {
            Contract c = new Contract();
            c.setContractId(Integer.parseInt(request.getParameter("contractId")));
            c.setAssassinId(Integer.parseInt(request.getParameter("assassinId")));
            c.setClientName(request.getParameter("clientName"));
            c.setTargetName(request.getParameter("targetName"));
            c.setLocation(request.getParameter("location"));
            c.setReward(Double.parseDouble(request.getParameter("reward")));
            c.setStatus(request.getParameter("status"));
            dao.updateContract(c);
        } else if ("delete".equals(action)) {
            int contractId = Integer.parseInt(request.getParameter("contractId"));
            dao.deleteContract(contractId);
        }

        response.sendRedirect("contracts-admin.jsp");
    }
}
