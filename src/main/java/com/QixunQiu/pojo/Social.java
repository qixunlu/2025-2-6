package com.QixunQiu.pojo;

public class Social{

    private String assessmentID; // 评估编号（主键）
    private Integer lifeAbility; // 生活能力评分
    private Integer workAbility; // 工作能力评分
    private Integer timeSpaceOrientation; // 时间/空间定向评分
    private Integer personOrientation; // 人物定向评分
    private Integer socialInteractionAbility; // 社会交往能力评分
    private Integer totalScore; // 社会参与总分
    private Integer participationGrade; // 社会参与分级

    // Default constructor
    public Social() {
    }

    // Parameterized constructor
    public Social(String assessmentID, Integer lifeAbility, Integer workAbility,
                            Integer timeSpaceOrientation, Integer personOrientation,
                            Integer socialInteractionAbility, Integer totalScore,
                            Integer participationGrade) {
        this.assessmentID = assessmentID;
        this.lifeAbility = lifeAbility;
        this.workAbility = workAbility;
        this.timeSpaceOrientation = timeSpaceOrientation;
        this.personOrientation = personOrientation;
        this.socialInteractionAbility = socialInteractionAbility;
        this.totalScore = totalScore;
        this.participationGrade = participationGrade;
    }

    // Getters and Setters
    public String getAssessmentID() {
        return assessmentID;
    }

    public void setAssessmentID(String assessmentID) {
        this.assessmentID = assessmentID;
    }

    public Integer getLifeAbility() {
        return lifeAbility;
    }

    public void setLifeAbility(Integer lifeAbility) {
        this.lifeAbility = lifeAbility;
    }

    public Integer getWorkAbility() {
        return workAbility;
    }

    public void setWorkAbility(Integer workAbility) {
        this.workAbility = workAbility;
    }

    public Integer getTimeSpaceOrientation() {
        return timeSpaceOrientation;
    }

    public void setTimeSpaceOrientation(Integer timeSpaceOrientation) {
        this.timeSpaceOrientation = timeSpaceOrientation;
    }

    public Integer getPersonOrientation() {
        return personOrientation;
    }

    public void setPersonOrientation(Integer personOrientation) {
        this.personOrientation = personOrientation;
    }

    public Integer getSocialInteractionAbility() {
        return socialInteractionAbility;
    }

    public void setSocialInteractionAbility(Integer socialInteractionAbility) {
        this.socialInteractionAbility = socialInteractionAbility;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public Integer getParticipationGrade() {
        return participationGrade;
    }

    public void setParticipationGrade(Integer participationGrade) {
        this.participationGrade = participationGrade;
    }

    // toString method for debugging
    @Override
    public String toString() {
        return "SocialAssessment{" +
                "assessmentID='" + assessmentID + '\'' +
                ", lifeAbility=" + lifeAbility +
                ", workAbility=" + workAbility +
                ", timeSpaceOrientation=" + timeSpaceOrientation +
                ", personOrientation=" + personOrientation +
                ", socialInteractionAbility=" + socialInteractionAbility +
                ", totalScore=" + totalScore +
                ", participationGrade=" + participationGrade +
                '}';
    }
}