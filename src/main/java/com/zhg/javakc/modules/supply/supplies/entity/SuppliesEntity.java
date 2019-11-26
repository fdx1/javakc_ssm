package com.zhg.javakc.modules.supply.supplies.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:30
 * @Version 1.0
 */
public class SuppliesEntity extends BaseEntity<SuppliesEntity> {

    /**
     *物资id
     */
    private String goodsId;
    /**
     * 类型id
     */
    private String typeId;
    /**
     * 物资名字
     */
    private String goodsName;
    /**
     * 物资规格
     */
    private String goodsGuige;
    /**
     * 物资简称
     */
    private String goodsJiancheng;
    /**
     * 简述
     */
    private String goodsComment;
    /**
     * 照片信息
     */
    private byte[] goodsPicture;
    /**
     * 是否赋码 1:是 2:否
     */
    private Integer goodsFuma;
    /**
     *物资类型
     */
    private String goodsMold;
    /**
     * 限制合同采购 1:是 2:否
     */
    private Integer goodsPact;
    /**
     * 物资组
      */
    private String goodsWuzizu;
    /**
     * 保质期
     */
    private String goodsDate;
    /**
     * 税率
     */
    private String rate;
    /**
     * 基本单位
     */
    private String goodsBasicu;
    /**
     * 生产单位
     */
    private String goodsProdu;
    /**
     * 净重
     */
    private String goodsSuttle;
    /**
     * 毛重
     */
    private String goodsRough;
    /**
     * 体积长
     */
    private String goodsLength;
    /**
     * 体积宽
     */
    private String goodsWide;
    /**
     * 体积高
     */
    private String goodsHigh;
    /**
     * 体积单位
     */
    private String goodsUnit;
    /**
     *状态 1:启用 2:停用
     */
    private Integer goodsState;
    /**
     * 价格
     */
//    private String priceId;


    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsGuige() {
        return goodsGuige;
    }

    public void setGoodsGuige(String goodsGuige) {
        this.goodsGuige = goodsGuige;
    }

    public String getGoodsJiancheng() {
        return goodsJiancheng;
    }

    public void setGoodsJiancheng(String goodsJiancheng) {
        this.goodsJiancheng = goodsJiancheng;
    }

    public String getGoodsComment() {
        return goodsComment;
    }

    public void setGoodsComment(String goodsComment) {
        this.goodsComment = goodsComment;
    }

    public byte[] getGoodsPicture() {
        return goodsPicture;
    }

    public void setGoodsPicture(byte[] goodsPicture) {
        this.goodsPicture = goodsPicture;
    }

    public Integer getGoodsFuma() {
        return goodsFuma;
    }

    public void setGoodsFuma(Integer goodsFuma) {
        this.goodsFuma = goodsFuma;
    }

    public String getGoodsMold() {
        return goodsMold;
    }

    public void setGoodsMold(String goodsMold) {
        this.goodsMold = goodsMold;
    }

    public Integer getGoodsPact() {
        return goodsPact;
    }

    public void setGoodsPact(Integer goodsPact) {
        this.goodsPact = goodsPact;
    }

    public String getGoodsWuzizu() {
        return goodsWuzizu;
    }

    public void setGoodsWuzizu(String goodsWuzizu) {
        this.goodsWuzizu = goodsWuzizu;
    }

    public String getGoodsDate() {
        return goodsDate;
    }

    public void setGoodsDate(String goodsDate) {
        this.goodsDate = goodsDate;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getGoodsBasicu() {
        return goodsBasicu;
    }

    public void setGoodsBasicu(String goodsBasicu) {
        this.goodsBasicu = goodsBasicu;
    }

    public String getGoodsProdu() {
        return goodsProdu;
    }

    public void setGoodsProdu(String goodsProdu) {
        this.goodsProdu = goodsProdu;
    }

    public String getGoodsSuttle() {
        return goodsSuttle;
    }

    public void setGoodsSuttle(String goodsSuttle) {
        this.goodsSuttle = goodsSuttle;
    }

    public String getGoodsRough() {
        return goodsRough;
    }

    public void setGoodsRough(String goodsRough) {
        this.goodsRough = goodsRough;
    }

    public String getGoodsLength() {
        return goodsLength;
    }

    public void setGoodsLength(String goodsLength) {
        this.goodsLength = goodsLength;
    }

    public String getGoodsWide() {
        return goodsWide;
    }

    public void setGoodsWide(String goodsWide) {
        this.goodsWide = goodsWide;
    }

    public String getGoodsHigh() {
        return goodsHigh;
    }

    public void setGoodsHigh(String goodsHigh) {
        this.goodsHigh = goodsHigh;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public Integer getGoodsState() {
        return goodsState;
    }

    public void setGoodsState(Integer goodsState) {
        this.goodsState = goodsState;
    }
}
