/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TCNJK
 */
public class CartAni {
    private String userId,aniId;
    private String imgUrl,aniUrl,titleAni;
    private Double rootMoney,rootMoney2,rootMoney3,rootMoney4,sumMoney;
    private int aniNumber,aniNumber2,aniNumber3,aniNumber4;
    private int stt;
    public CartAni() {
    }

    public CartAni(String userId, String aniId, String imgUrl, String titleAni, double rootMoney,double rootMoney2,double rootMoney3,double rootMoney4, int aniNumber, int aniNumber2, int aniNumber3, int aniNumber4, int stt) {
        this.userId = userId;
        this.aniId = aniId.trim();
        this.imgUrl = imgUrl;
        this.titleAni = titleAni;
        this.rootMoney = rootMoney;
        this.rootMoney2 = rootMoney2;
        this.rootMoney3 = rootMoney3;
        this.rootMoney4 = rootMoney4;
        this.aniNumber = aniNumber;
        this.aniNumber2 = aniNumber2;
        this.aniNumber3 = aniNumber3;
        this.aniNumber4 = aniNumber4;

        this.stt=stt;
        setSumMoney();
    }

    public Double getRootMoney2() {
        return rootMoney2;
    }

    public void setRootMoney2(Double rootMoney2) {
        this.rootMoney2 = rootMoney2;
    }

    public Double getRootMoney3() {
        return rootMoney3;
    }

    public void setRootMoney3(Double rootMoney3) {
        this.rootMoney3 = rootMoney3;
    }

    public Double getRootMoney4() {
        return rootMoney4;
    }

    public void setRootMoney4(Double rootMoney4) {
        this.rootMoney4 = rootMoney4;
    }
    
    public int getAniNumber2() {
        return aniNumber2;
    }

    public void setAniNumber2(int aniNumber2) {
        this.aniNumber2 = aniNumber2;
    }

    public int getAniNumber3() {
        return aniNumber3;
    }

    public void setAniNumber3(int aniNumber3) {
        this.aniNumber3 = aniNumber3;
    }

    public int getAniNumber4() {
        return aniNumber4;
    }

    public void setAniNumber4(int aniNumber4) {
        this.aniNumber4 = aniNumber4;
    }
    
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAniId() {
        return aniId;
    }

    public void setAniId(String aniId) {
        this.aniId = aniId;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getAniUrl() {
        return aniUrl;
    }

    public void setAniUrl(String aniUrl) {
        this.aniUrl = aniUrl;
    }

    public String getTitleAni() {
        return titleAni;
    }

    public void setTitleAni(String titleAni) {
        this.titleAni = titleAni;
    }

    public Double getRootMoney() {
        return rootMoney;
    }

    public void setRootMoney(Double rootMoney) {
        this.rootMoney = rootMoney;
    }

    public Double getSumMoney() {
        return sumMoney;
    }

    public void setSumMoney(Double sumMoney) {
        this.sumMoney = sumMoney;
    }
    public void setSumMoney(){
        this.sumMoney=rootMoney*aniNumber+rootMoney2*aniNumber2+rootMoney3*aniNumber3+rootMoney4*aniNumber4;
    }
    public int getAniNumber() {
        return aniNumber;
    }

    public void setAniNumber(int aniNumber) {
        this.aniNumber = aniNumber;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }
    
    

    @Override
    public String toString() {
        return "CartAni{" + "userId=" + userId + ", aniId=" + aniId + ", imgUrl=" + imgUrl + ", aniUrl=" + aniUrl + ", titleAni=" + titleAni + ", rootMoney=" + rootMoney + ", sumMoney=" + sumMoney + ", aniNumber=" + aniNumber + '}';
    }
    
}
