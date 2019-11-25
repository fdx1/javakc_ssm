package com.zhg.javakc.modules.supply.relation.entity;

import com.zhg.javakc.base.entity.BaseEntity;


/**
 * @Author lenovo
 * @Date 2019/11/22 15:39
 * @Version 1.0
 */
public class RelationEntity extends BaseEntity<RelationEntity> {

    private String ssId;
    private String oriId;
    private String goodsId;
    private String supplierId;
    private String oriName;
    private String rate;

    public String getSsId() {
        return ssId;
    }

    public void setSsId(String ssId) {
        this.ssId = ssId;
    }

    public String getOriId() {
        return oriId;
    }

    public void setOriId(String oriId) {
        this.oriId = oriId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getOriName() {
        return oriName;
    }

    public void setOriName(String oriName) {
        this.oriName = oriName;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }
}
