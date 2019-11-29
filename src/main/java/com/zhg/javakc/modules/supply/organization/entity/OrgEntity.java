package com.zhg.javakc.modules.supply.organization.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:33
 * @Version 1.0
 */
public class OrgEntity extends BaseEntity<OrgEntity> {

    private String oriId ;
    private String oriName;
    private String oriPid;
    private int oriLevel;
    private String oriOpen;
    private int oriOrder;

    public String getOriId() {
        return oriId;
    }

    public void setOriId(String oriId) {
        this.oriId = oriId;
    }

    public String getOriName() {
        return oriName;
    }

    public void setOriName(String oriName) {
        this.oriName = oriName;
    }

    public String getOriPid() {
        return oriPid;
    }

    public void setOriPid(String oriPid) {
        this.oriPid = oriPid;
    }

    public int getOriLevel() {
        return oriLevel;
    }

    public void setOriLevel(int oriLevel) {
        this.oriLevel = oriLevel;
    }

    public String getOriOpen() {
        return oriOpen;
    }

    public void setOriOpen(String oriOpen) {
        this.oriOpen = oriOpen;
    }

    public int getOriOrder() {
        return oriOrder;
    }

    public void setOriOrder(int oriOrder) {
        this.oriOrder = oriOrder;
    }

}
