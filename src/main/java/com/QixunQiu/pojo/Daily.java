package com.QixunQiu.pojo;

public class Daily {
    private String assessmentID;
    private Integer eating;
    private Integer bathing;
    private Integer grooming;
    private Integer dressing;
    private Integer bowelControl;
    private Integer bladderControl;
    private Integer toileting;
    private Integer bedChairTransfer;
    private Integer walking;
    private Integer stairs;
    private Integer totalScore;
    private Integer activityLevel;

    // Getter 和 Setter 方法
    public String getAssessmentID() {
        return assessmentID;
    }

    public void setAssessmentID(String assessmentID) {
        this.assessmentID = assessmentID;
    }

    public Integer getEating() {
        return eating;
    }

    public void setEating(Integer eating) {
        this.eating = eating;
    }

    public Integer getBathing() {
        return bathing;
    }

    public void setBathing(Integer bathing) {
        this.bathing = bathing;
    }

    public Integer getGrooming() {
        return grooming;
    }

    public void setGrooming(Integer grooming) {
        this.grooming = grooming;
    }

    public Integer getDressing() {
        return dressing;
    }

    public void setDressing(Integer dressing) {
        this.dressing = dressing;
    }

    public Integer getBowelControl() {
        return bowelControl;
    }

    public void setBowelControl(Integer bowelControl) {
        this.bowelControl = bowelControl;
    }

    public Integer getBladderControl() {
        return bladderControl;
    }

    public void setBladderControl(Integer bladderControl) {
        this.bladderControl = bladderControl;
    }

    public Integer getToileting() {
        return toileting;
    }

    public void setToileting(Integer toileting) {
        this.toileting = toileting;
    }

    public Integer getBedChairTransfer() {
        return bedChairTransfer;
    }

    public void setBedChairTransfer(Integer bedChairTransfer) {
        this.bedChairTransfer = bedChairTransfer;
    }

    public Integer getWalking() {
        return walking;
    }

    public void setWalking(Integer walking) {
        this.walking = walking;
    }

    public Integer getStairs() {
        return stairs;
    }

    public void setStairs(Integer stairs) {
        this.stairs = stairs;
    }

    public Integer getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }

    public Integer getActivityLevel() {
        return activityLevel;
    }

    public void setActivityLevel(Integer activityLevel) {
        this.activityLevel = activityLevel;
    }

    @Override
    public String toString() {
        return "DailyLivingActivity{" +
                "assessmentID='" + assessmentID + '\'' +
                ", eating=" + eating +
                ", bathing=" + bathing +
                ", grooming=" + grooming +
                ", dressing=" + dressing +
                ", bowelControl=" + bowelControl +
                ", bladderControl=" + bladderControl +
                ", toileting=" + toileting +
                ", bedChairTransfer=" + bedChairTransfer +
                ", walking=" + walking +
                ", stairs=" + stairs +
                ", totalScore=" + totalScore +
                ", activityLevel=" + activityLevel +
                '}';
    }
}