package com.QixunQiu.pojo;

public class Mental {
    private String assessmentID;
    private Integer cognitiveTestScore;
    private Integer aggressiveBehaviorScore;
    private Integer depressiveSymptomsScore;
    private Integer totalScore;
    private Integer mentalStatusLevel;

    // Getter 和 Setter 方法
    public String getAssessmentID() {
        return assessmentID;
    }

    public void setAssessmentID(String assessmentID) {
        this.assessmentID = assessmentID;
    }

    public Integer getCognitiveTestScore() {
        return cognitiveTestScore;
    }

    public void setCognitiveTestScore(Integer cognitiveTestScore) {
        this.cognitiveTestScore = cognitiveTestScore;
    }

    public Integer getAggressiveBehaviorScore() {
        return aggressiveBehaviorScore;
    }

    public void setAggressiveBehaviorScore(Integer aggressiveBehaviorScore) {
        this.aggressiveBehaviorScore = aggressiveBehaviorScore;
    }

    public Integer getDepressiveSymptomsScore() {
        return depressiveSymptomsScore;
    }

    public void setDepressiveSymptomsScore(Integer depressiveSymptomsScore) {
        this.depressiveSymptomsScore = depressiveSymptomsScore;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public Integer getMentalStatusLevel() {
        return mentalStatusLevel;
    }

    public void setMentalStatusLevel(Integer mentalStatusLevel) {
        this.mentalStatusLevel = mentalStatusLevel;
    }

    @Override
    public String toString() {
        return "MentalStatusAssessment{" +
                "assessmentID='" + assessmentID + '\'' +
                ", cognitiveTestScore=" + cognitiveTestScore +
                ", aggressiveBehaviorScore=" + aggressiveBehaviorScore +
                ", depressiveSymptomsScore=" + depressiveSymptomsScore +
                ", totalScore=" + totalScore +
                ", mentalStatusLevel=" + mentalStatusLevel +
                '}';
    }
}
