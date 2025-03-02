package com.QixunQiu.pojo;

import java.util.Date;

public class Older {
    private String AssessmentID ;
    private String AssessmentDate ;
    private int AssessmentReason;
    private String userID;

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getAssessmentDate() {
        return AssessmentDate;
    }

    public void setAssessmentDate(String assessmentDate) {
        AssessmentDate = assessmentDate;
    }

    public String getAssessmentID() {
        return AssessmentID;
    }

    public void setAssessmentID(String assessmentID) {
        AssessmentID = assessmentID;
    }

    public int getAssessmentReason() {
        return AssessmentReason;
    }

    public void setAssessmentReason(int assessmentReason) {
        AssessmentReason = assessmentReason;
    }


    // A.2.1 姓名
        private String name;

        // A.2.2 性别 (1: 男, 2: 女)
        private Integer gender;

        // A.2.3 出生日期
        private String birthDate;

        // A.2.4 身份证号
        private String idCard;

        // A.2.5 社保卡号
        private String socialSecurityCard;

        // A.2.6 民族 (1: 汉族, 2: 少数民族)
        private String ethnicity;


        // A.2.7 文化程度 (1: 文盲, 2: 小学, 3: 初中, 4: 高中/技校/中专, 5: 大学专科及以上, 6: 不详)
        private Integer educationLevel;

        // A.2.8 宗教信仰 (0: 无, 1: 有)
        private String religion;


        // A.2.9 婚姻状况 (1: 未婚, 2: 已婚, 3: 丧偶, 4: 离婚, 5: 未说明的婚姻状况)
        private Integer maritalStatus;

        // A.2.10 居住情况 (1: 独居, 2: 与配偶/伴侣居住, 3: 与子女居住, 4: 与父母居住, 5: 与兄弟姐妹居住, 6: 与其他亲属居住, 7: 与非亲属关系的人居住, 8: 养老机构)
        private Integer livingSituation;

        // A.2.11 医疗费用支付方式 (多选, 用逗号分隔)
        private String paymentMethod;

        // A.2.12 经济来源 (多选, 用逗号分隔)
        private String incomeSource;

        // A.2.13.1 痴呆 (0: 无, 1: 轻度, 2: 中度, 3: 重度)
        private Integer dementiaLevel;

        // A.2.13.2 精神疾病 (0: 无, 1: 精神分裂症, 2: 双相情感障碍, 3: 偏执性精神障碍, 4: 分裂情感性障碍, 5: 癫痫所致精神障碍, 6: 精神发育迟滞伴发精神障碍)
        private Integer mentalIllness;

        // A.2.13.3 慢性疾病 (可填写多个)
        private String chronicDiseases;

        // A.2.14.1 跌倒 (0: 无, 1: 发生过1次, 2: 发生过2次, 3: 发生过3次及以上)
        private Integer fallIncidents;

        // A.2.14.2 走失 (0: 无, 1: 发生过1次, 2: 发生过2次, 3: 发生过3次及以上)
        private Integer lostIncidents;

        // A.2.14.3 噎食 (0: 无, 1: 发生过1次, 2: 发生过2次, 3: 发生过3次及以上)
        private Integer chokingIncidents;

        // A.2.14.4 自杀 (0: 无, 1: 发生过1次, 2: 发生过2次, 3: 发生过3次及以上)
        private Integer suicideIncidents;

        // A.2.14.5 其他意外事件
        private String otherIncidents;

    @Override
    public String toString() {
        return "Older{" +
                "AssessmentID='" + AssessmentID + '\'' +
                ", AssessmentDate='" + AssessmentDate + '\'' +
                ", AssessmentReason=" + AssessmentReason +
                ", userID='" + userID + '\'' +
                ", name='" + name + '\'' +
                ", gender=" + gender +
                ", birthDate=" + birthDate +
                ", idCard='" + idCard + '\'' +
                ", socialSecurityCard='" + socialSecurityCard + '\'' +
                ", ethnicity='" + ethnicity + '\'' +
                ", educationLevel=" + educationLevel +
                ", religion='" + religion + '\'' +
                ", maritalStatus=" + maritalStatus +
                ", livingSituation=" + livingSituation +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", incomeSource='" + incomeSource + '\'' +
                ", dementiaLevel=" + dementiaLevel +
                ", mentalIllness=" + mentalIllness +
                ", chronicDiseases='" + chronicDiseases + '\'' +
                ", fallIncidents=" + fallIncidents +
                ", lostIncidents=" + lostIncidents +
                ", chokingIncidents=" + chokingIncidents +
                ", suicideIncidents=" + suicideIncidents +
                ", otherIncidents='" + otherIncidents + '\'' +
                '}';
    }

    public String getEthnicity() {
        return ethnicity;
    }

    public void setEthnicity(String ethnicity) {
        this.ethnicity = ethnicity;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getSocialSecurityCard() {
        return socialSecurityCard;
    }

    public void setSocialSecurityCard(String socialSecurityCard) {
        this.socialSecurityCard = socialSecurityCard;
    }


    public Integer getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(Integer educationLevel) {
        this.educationLevel = educationLevel;
    }


    public Integer getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(Integer maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public Integer getLivingSituation() {
        return livingSituation;
    }

    public void setLivingSituation(Integer livingSituation) {
        this.livingSituation = livingSituation;
    }



    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Integer getDementiaLevel() {
        return dementiaLevel;
    }

    public void setDementiaLevel(Integer dementiaLevel) {
        this.dementiaLevel = dementiaLevel;
    }

    public Integer getMentalIllness() {
        return mentalIllness;
    }

    public void setMentalIllness(Integer mentalIllness) {
        this.mentalIllness = mentalIllness;
    }

    public String getIncomeSource() {
        return incomeSource;
    }

    public void setIncomeSource(String incomeSource) {
        this.incomeSource = incomeSource;
    }

    public Integer getFallIncidents() {
        return fallIncidents;
    }

    public void setFallIncidents(Integer fallIncidents) {
        this.fallIncidents = fallIncidents;
    }

    public Integer getChokingIncidents() {
        return chokingIncidents;
    }

    public void setChokingIncidents(Integer chokingIncidents) {
        this.chokingIncidents = chokingIncidents;
    }

    public String getOtherIncidents() {
        return otherIncidents;
    }

    public void setOtherIncidents(String otherIncidents) {
        this.otherIncidents = otherIncidents;
    }

    public Integer getSuicideIncidents() {
        return suicideIncidents;
    }

    public void setSuicideIncidents(Integer suicideIncidents) {
        this.suicideIncidents = suicideIncidents;
    }

    public Integer getLostIncidents() {
        return lostIncidents;
    }

    public void setLostIncidents(Integer lostIncidents) {
        this.lostIncidents = lostIncidents;
    }

    public String getChronicDiseases() {
        return chronicDiseases;
    }

    public void setChronicDiseases(String chronicDiseases) {
        this.chronicDiseases = chronicDiseases;
    }
}
