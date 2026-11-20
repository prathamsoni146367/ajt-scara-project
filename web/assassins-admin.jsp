<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin - Assassins | Scara</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #121212; color: #fff; padding: 2rem;">

<div class="container">
  <h2>Admin - Assassins</h2>
  <a href="admin.jsp" class="btn btn-secondary mb-3">Messages</a>
  <a href="contracts-admin.jsp" class="btn btn-secondary mb-3">Contracts</a>
  <a href="index.jsp" class="btn btn-secondary mb-3">Back to Site</a>

  <%
    int editId = 0;
    String editName = "", editSpecialization = "", editRanking = "", editStatus = "";
    String editParam = request.getParameter("edit");
    if (editParam != null) {
        editId = Integer.parseInt(editParam);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection econ = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");
            PreparedStatement eps = econ.prepareStatement("SELECT * FROM assassins WHERE assassin_id = ?");
            eps.setInt(1, editId);
            ResultSet ers = eps.executeQuery();
            if (ers.next()) {
                editName = ers.getString("name");
                editSpecialization = ers.getString("specialization");
                editRanking = ers.getString("ranking");
                editStatus = ers.getString("status");
            }
            ers.close();
            eps.close();
            econ.close();
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while loading assassin: " + e.getMessage());
        }
    }
  %>

  <div class="card bg-dark border-secondary mb-4">
    <div class="card-body">
      <h5 class="card-title"><%= editId > 0 ? "Edit Assassin" : "Add New Assassin" %></h5>
      <form action="AssassinServlet" method="post" class="row g-2">
        <input type="hidden" name="action" value="<%= editId > 0 ? "update" : "insert" %>">
        <% if (editId > 0) { %>
        <input type="hidden" name="assassinId" value="<%= editId %>">
        <% } %>
        <div class="col-md-3">
          <input type="text" name="name" class="form-control" placeholder="Name" value="<%= editName %>" required>
        </div>
        <div class="col-md-3">
          <input type="text" name="specialization" class="form-control" placeholder="Specialization" value="<%= editSpecialization %>" required>
        </div>
        <div class="col-md-2">
          <input type="text" name="ranking" class="form-control" placeholder="Rank" value="<%= editRanking %>" required>
        </div>
        <div class="col-md-2">
          <select name="status" class="form-select">
            <option value="Active" <%= editStatus.equals("Active") ? "selected" : "" %>>Active</option>
            <option value="Retired" <%= editStatus.equals("Retired") ? "selected" : "" %>>Retired</option>
            <option value="KIA" <%= editStatus.equals("KIA") ? "selected" : "" %>>KIA</option>
          </select>
        </div>
        <div class="col-md-2">
          <button type="submit" class="btn btn-danger w-100"><%= editId > 0 ? "Update" : "Add" %></button>
        </div>
      </form>
    </div>
  </div>

  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Specialization</th>
        <th>Rank</th>
        <th>Status</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM assassins ORDER BY assassin_id DESC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
      %>
      <tr>
        <td><%= rs.getInt("assassin_id") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("specialization") %></td>
        <td><%= rs.getString("ranking") %></td>
        <td><%= rs.getString("status") %></td>
        <td>
          <a href="assassins-admin.jsp?edit=<%= rs.getInt("assassin_id") %>" class="btn btn-sm btn-outline-light">Edit</a>
          <a href="AssassinServlet?action=delete&assassinId=<%= rs.getInt("assassin_id") %>" class="btn btn-sm btn-outline-danger" onclick="return confirm('Delete this assassin?')">Delete</a>
        </td>
      </tr>
      <%
            }
            rs.close();
            ps.close();
            con.close();
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
      %>
      <tr><td colspan="6">Driver error: <%= e.getMessage() %></td></tr>
      <%
        } catch (SQLException e) {
            System.out.println("Database error: " + e.getMessage());
      %>
      <tr><td colspan="6">Database error: <%= e.getMessage() %></td></tr>
      <%
        }
      %>
    </tbody>
  </table>
</div>

</body>
</html>
