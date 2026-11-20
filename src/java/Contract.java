public class Contract {

    private int contractId;
    private int assassinId;
    private String assassinName;
    private String clientName;
    private String targetName;
    private String location;
    private double reward;
    private String status;
    private String createdAt;

    public int getContractId() {
        return contractId;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public int getAssassinId() {
        return assassinId;
    }

    public void setAssassinId(int assassinId) {
        this.assassinId = assassinId;
    }

    public String getAssassinName() {
        return assassinName;
    }

    public void setAssassinName(String assassinName) {
        this.assassinName = assassinName;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getTargetName() {
        return targetName;
    }

    public void setTargetName(String targetName) {
        this.targetName = targetName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getReward() {
        return reward;
    }

    public void setReward(double reward) {
        this.reward = reward;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
