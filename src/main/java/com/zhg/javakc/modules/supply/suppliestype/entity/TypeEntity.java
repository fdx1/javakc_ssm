package com.zhg.javakc.modules.supply.suppliestype.entity;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:24
 * @Version 1.0
 */

public class TypeEntity extends BaseEntity<TypeEntity> {
    private String typeId;
    private String typeName;
    private String typeShort;
    private String typePid;
    private String typeOpen;
    private String typeOrder;
    private String typeLevel;

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeShort() {
        return typeShort;
    }

    public void setTypeShort(String typeShort) {
        this.typeShort = typeShort;
    }

    public String getTypePid() {
        return typePid;
    }

    public void setTypePid(String typePid) {
        this.typePid = typePid;
    }

    public String getTypeOpen() {
        return typeOpen;
    }

    public void setTypeOpen(String typeOpen) {
        this.typeOpen = typeOpen;
    }

    public String getTypeOrder() {
        return typeOrder;
    }

    public void setTypeOrder(String typeOrder) {
        this.typeOrder = typeOrder;
    }

    public String getTypeLevel() {
        return typeLevel;
    }

    public void setTypeLevel(String typeLevel) {
        this.typeLevel = typeLevel;
    }
}
