import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContractDAO {

    public boolean insertContract(Contract c) {
        String query = "INSERT INTO contracts (assassin_id, client_name, target_name, location, reward, status) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, c.getAssassinId());
            ps.setString(2, c.getClientName());
            ps.setString(3, c.getTargetName());
            ps.setString(4, c.getLocation());
            ps.setDouble(5, c.getReward());
            ps.setString(6, c.getStatus());
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while inserting contract: " + e.getMessage());
        }
        return false;
    }

    public List<Contract> getAllContracts() {
        List<Contract> list = new ArrayList<>();
        String query = "SELECT c.*, a.name AS assassin_name FROM contracts c JOIN assassins a ON c.assassin_id = a.assassin_id ORDER BY c.contract_id DESC";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Contract c = new Contract();
                c.setContractId(rs.getInt("contract_id"));
                c.setAssassinId(rs.getInt("assassin_id"));
                c.setAssassinName(rs.getString("assassin_name"));
                c.setClientName(rs.getString("client_name"));
                c.setTargetName(rs.getString("target_name"));
                c.setLocation(rs.getString("location"));
                c.setReward(rs.getDouble("reward"));
                c.setStatus(rs.getString("status"));
                c.setCreatedAt(rs.getString("created_at"));
                list.add(c);
            }
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while fetching contracts: " + e.getMessage());
        }
        return list;
    }

    public boolean updateContract(Contract c) {
        String query = "UPDATE contracts SET assassin_id = ?, client_name = ?, target_name = ?, location = ?, reward = ?, status = ? WHERE contract_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, c.getAssassinId());
            ps.setString(2, c.getClientName());
            ps.setString(3, c.getTargetName());
            ps.setString(4, c.getLocation());
            ps.setDouble(5, c.getReward());
            ps.setString(6, c.getStatus());
            ps.setInt(7, c.getContractId());
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while updating contract: " + e.getMessage());
        }
        return false;
    }

    public boolean deleteContract(int contractId) {
        String query = "DELETE FROM contracts WHERE contract_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, contractId);
            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Database error while deleting contract: " + e.getMessage());
        }
        return false;
    }
}
