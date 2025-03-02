package com.QixunQiu.pojo;

public class Person {
    private String userID;
    private String olderID;
    private String providerName;
    private Integer relationship;
    private String otherRelationship;
    private String contactName;
    private String contactPhone;

    // Getter 和 Setter 方法
    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getOlderID() {
        return olderID;
    }

    public void setOlderID(String olderID) {
        this.olderID = olderID;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public Integer getRelationship() {
        return relationship;
    }

    public void setRelationship(Integer relationship) {
        this.relationship = relationship;
    }

    public String getOtherRelationship() {
        return otherRelationship;
    }

    public void setOtherRelationship(String otherRelationship) {
        this.otherRelationship = otherRelationship;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    @Override
    public String toString() {
        return "Person{" +
                "userID='" + userID + '\'' +
                ", olderID='" + olderID + '\'' +
                ", providerName='" + providerName + '\'' +
                ", relationship=" + relationship +
                ", otherRelationship='" + otherRelationship + '\'' +
                ", contactName='" + contactName + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                '}';
    }
}