import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AssassinDAO {

    public boolean insertAssassin(Assassin a) {
        String query = "INSERT INTO assassins (name, specialization, ranking, status) VALUES (?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, a.getName());
            ps.setString(2, a.getSpecialization());
            ps.setString(3, a.getRanking());
            ps.setString(4, a.getStatus());
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while inserting assassin: " + e.getMessage());
        }
        return false;
    }

    public List<Assassin> getAllAssassins() {
        List<Assassin> list = new ArrayList<>();
        String query = "SELECT * FROM assassins ORDER BY assassin_id DESC";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Assassin a = new Assassin();
                a.setAssassinId(rs.getInt("assassin_id"));
                a.setName(rs.getString("name"));
                a.setSpecialization(rs.getString("specialization"));
                a.setRanking(rs.getString("ranking"));
                a.setStatus(rs.getString("status"));
                list.add(a);
            }
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while fetching assassins: " + e.getMessage());
        }
        return list;
    }

    public Assassin getAssassinById(int assassinId) {
        Assassin a = null;
        String query = "SELECT * FROM assassins WHERE assassin_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, assassinId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    a = new Assassin();
                    a.setAssassinId(rs.getInt("assassin_id"));
                    a.setName(rs.getString("name"));
                    a.setSpecialization(rs.getString("specialization"));
                    a.setRanking(rs.getString("ranking"));
                    a.setStatus(rs.getString("status"));
                }
            }
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while fetching assassin: " + e.getMessage());
        }
        return a;
    }

    public boolean updateAssassin(Assassin a) {
        String query = "UPDATE assassins SET name = ?, specialization = ?, ranking = ?, status = ? WHERE assassin_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, a.getName());
            ps.setString(2, a.getSpecialization());
            ps.setString(3, a.getRanking());
            ps.setString(4, a.getStatus());
            ps.setInt(5, a.getAssassinId());
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while updating assassin: " + e.getMessage());
        }
        return false;
    }

    public boolean deleteAssassin(int assassinId) {
        String query = "DELETE FROM assassins WHERE assassin_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, assassinId);
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while deleting assassin: " + e.getMessage());
        }
        return false;
    }
}
