<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin - Contracts | Scara</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #121212; color: #fff; padding: 2rem;">

<div class="container">
  <h2>Admin - Contracts</h2>
  <a href="admin.jsp" class="btn btn-secondary mb-3">Messages</a>
  <a href="assassins-admin.jsp" class="btn btn-secondary mb-3">Assassins</a>
  <a href="index.jsp" class="btn btn-secondary mb-3">Back to Site</a>

  <%
    int editId = 0;
    int editAssassinId = 0;
    String editClient = "", editTarget = "", editLocation = "", editStatus = "";
    double editReward = 0;
    String editParam = request.getParameter("edit");
    if (editParam != null) {
        editId = Integer.parseInt(editParam);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection econ = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");
            PreparedStatement eps = econ.prepareStatement("SELECT * FROM contracts WHERE contract_id = ?");
            eps.setInt(1, editId);
            ResultSet ers = eps.executeQuery();
            if (ers.next()) {
                editAssassinId = ers.getInt("assassin_id");
                editClient = ers.getString("client_name");
                editTarget = ers.getString("target_name");
                editLocation = ers.getString("location");
                editReward = ers.getDouble("reward");
                editStatus = ers.getString("status");
            }
            ers.close();
            eps.close();
            econ.close();
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while loading contract: " + e.getMessage());
        }
    }
  %>

  <div class="card bg-dark border-secondary mb-4">
    <div class="card-body">
      <h5 class="card-title"><%= editId > 0 ? "Edit Contract" : "Add New Contract" %></h5>
      <form action="ContractServlet" method="post" class="row g-2">
        <input type="hidden" name="action" value="<%= editId > 0 ? "update" : "insert" %>">
        <% if (editId > 0) { %>
        <input type="hidden" name="contractId" value="<%= editId %>">
        <% } %>
        <div class="col-md-2">
          <select name="assassinId" class="form-select" required>
            <option value="">Assassin</option>
            <%
              try {
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection acon = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");
                  PreparedStatement aps = acon.prepareStatement("SELECT assassin_id, name FROM assassins ORDER BY name");
                  ResultSet ars = aps.executeQuery();
                  while (ars.next()) {
                      int aid = ars.getInt("assassin_id");
            %>
            <option value="<%= aid %>" <%= aid == editAssassinId ? "selected" : "" %>><%= ars.getString("name") %></option>
            <%
                  }
                  ars.close();
                  aps.close();
                  acon.close();
              } catch (ClassNotFoundException e) {
                  System.out.println("JDBC Driver not found: " + e.getMessage());
              } catch (SQLException e) {
                  System.out.println("Database error while loading assassins: " + e.getMessage());
              }
            %>
          </select>
        </div>
        <div class="col-md-2">
          <input type="text" name="clientName" class="form-control" placeholder="Client" value="<%= editClient %>" required>
        </div>
        <div class="col-md-2">
          <input type="text" name="targetName" class="form-control" placeholder="Target" value="<%= editTarget %>" required>
        </div>
        <div class="col-md-2">
          <input type="text" name="location" class="form-control" placeholder="Location" value="<%= editLocation %>" required>
        </div>
        <div class="col-md-2">
          <input type="number" step="0.01" name="reward" class="form-control" placeholder="Reward" value="<%= editReward > 0 ? String.valueOf(editReward) : "" %>" required>
        </div>
        <div class="col-md-1">
          <select name="status" class="form-select">
            <option value="Pending" <%= editStatus.equals("Pending") ? "selected" : "" %>>Pending</option>
            <option value="In Progress" <%= editStatus.equals("In Progress") ? "selected" : "" %>>In Progress</option>
            <option value="Completed" <%= editStatus.equals("Completed") ? "selected" : "" %>>Completed</option>
          </select>
        </div>
        <div class="col-md-1">
          <button type="submit" class="btn btn-danger w-100"><%= editId > 0 ? "Update" : "Add" %></button>
        </div>
      </form>
    </div>
  </div>

  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Assassin</th>
        <th>Client</th>
        <th>Target</th>
        <th>Location</th>
        <th>Reward</th>
        <th>Status</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scara_ajt", "root", "");
            String query = "SELECT c.*, a.name AS assassin_name FROM contracts c JOIN assassins a ON c.assassin_id = a.assassin_id ORDER BY c.contract_id DESC";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
      %>
      <tr>
        <td><%= rs.getInt("contract_id") %></td>
        <td><%= rs.getString("assassin_name") %></td>
        <td><%= rs.getString("client_name") %></td>
        <td><%= rs.getString("target_name") %></td>
        <td><%= rs.getString("location") %></td>
        <td><%= rs.getDouble("reward") %></td>
        <td><%= rs.getString("status") %></td>
        <td>
          <a href="contracts-admin.jsp?edit=<%= rs.getInt("contract_id") %>" class="btn btn-sm btn-outline-light">Edit</a>
          <a href="ContractServlet?action=delete&contractId=<%= rs.getInt("contract_id") %>" class="btn btn-sm btn-outline-danger" onclick="return confirm('Delete this contract?')">Delete</a>
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
      <tr><td colspan="8">Driver error: <%= e.getMessage() %></td></tr>
      <%
        } catch (SQLException e) {
            System.out.println("Database error: " + e.getMessage());
      %>
      <tr><td colspan="8">Database error: <%= e.getMessage() %></td></tr>
      <%
        }
      %>
    </tbody>
  </table>
</div>

</body>
</html>
