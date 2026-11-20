import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        String query = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);

            int result = ps.executeUpdate();
            if (result > 0) {
                response.sendRedirect("contact.jsp?status=success");
            } else {
                response.sendRedirect("contact.jsp?status=error");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
            response.sendRedirect("contact.jsp?status=error");
        } catch (SQLException e) {
            System.out.println("Database error while saving message: " + e.getMessage());
            response.sendRedirect("contact.jsp?status=error");
        }
    }
}
