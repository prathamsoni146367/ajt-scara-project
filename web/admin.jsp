<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin - Messages | Scara</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #121212; color: #fff; padding: 2rem;">

<div class="container">
  <h2>Admin - Contact Messages & Hiring Requests</h2>
  <a href="assassins-admin.jsp" class="btn btn-secondary mb-3">Assassins</a>
  <a href="contracts-admin.jsp" class="btn btn-secondary mb-3">Contracts</a>
  <a href="index.jsp" class="btn btn-secondary mb-3">Back to Site</a>

  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Message</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");

            String query = "SELECT * FROM contact_messages ORDER BY id DESC";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
      %>
      <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("message") %></td>
        <td><%= rs.getString("created_at") %></td>
      </tr>
      <%
            }
            rs.close();
            ps.close();
            con.close();
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
      %>
      <tr><td colspan="5">Driver error: <%= e.getMessage() %></td></tr>
      <%
        } catch (SQLException e) {
            System.out.println("Database error: " + e.getMessage());
      %>
      <tr><td colspan="5">Database error: <%= e.getMessage() %></td></tr>
      <%
        }
      %>
    </tbody>
  </table>
</div>

</body>
</html>
