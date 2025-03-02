package com.QixunQiu.pojo;

public class Communication {

    private String assessmentID; // 评估编号
    private Integer consciousnessLevel; // 意识水平评分
    private Integer visionLevel; // 视力评分
    private Integer hearingLevel; // 听力评分
    private Integer communicationLevel; // 沟通交流评分
    private Integer overallGrade; // 总分级

    @Override
    public String toString() {
        return "Communication{" +
                "assessmentID='" + assessmentID + '\'' +
                ", consciousnessLevel=" + consciousnessLevel +
                ", visionLevel=" + visionLevel +
                ", hearingLevel=" + hearingLevel +
                ", communicationLevel=" + communicationLevel +
                ", overallGrade=" + overallGrade +
                '}';
    }

    // Getters and Setters
    public String getAssessmentID() {
        return assessmentID;
    }

    public void setAssessmentID(String assessmentID) {
        this.assessmentID = assessmentID;
    }

    public Integer getConsciousnessLevel() {
        return consciousnessLevel;
    }

    public void setConsciousnessLevel(Integer consciousnessLevel) {
        this.consciousnessLevel = consciousnessLevel;
    }

    public Integer getVisionLevel() {
        return visionLevel;
    }

    public void setVisionLevel(Integer visionLevel) {
        this.visionLevel = visionLevel;
    }

    public Integer getHearingLevel() {
        return hearingLevel;
    }

    public void setHearingLevel(Integer hearingLevel) {
        this.hearingLevel = hearingLevel;
    }

    public Integer getCommunicationLevel() {
        return communicationLevel;
    }

    public void setCommunicationLevel(Integer communicationLevel) {
        this.communicationLevel = communicationLevel;
    }

    public Integer getOverallGrade() {
        return overallGrade;
    }

    public void setOverallGrade(Integer overallGrade) {
        this.overallGrade = overallGrade;
    }

}
