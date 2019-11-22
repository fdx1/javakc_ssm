package com.zhg.javakc.modules.supply.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:36
 * @Version 1.0
 */
public class SupplierEntity extends BaseEntity<SupplierEntity> {

    /**
     *供应商主键ID
     */
    private String supplierID;

    /**
     * 供应商类型
     */
    private String supplierType01;

    /**
     * 供应商内部组织
     */
    private String supplierNbzz;

    /**
     * 供应商名称
     */
    private String supplierName;

    /**
     * 供应商分类
     */
    private String supplierType02;

    /**
     * 供应商简称
     */
    private String supplierJname;

    /**
     * 法人
     */
    private String supplierFr;

    /**
     * 法人电话
     */
    private String supplierFrphone;

    /**
     * 供应商地址
     */
    private String supplierAddress;

    /**
     * 社会统一信任代码
     */
    private String supplierCode;

    /**
     * 联系人
     */
    private String supplierLxr;

    /**
     * 联系人电话
     */
    private String supplierLphone;

    /**
     * 联系人邮箱
     */
    private String supplierMail;

    /**
     * 添加日期
     */
    private Date supplierDate;

    /**
     * 修改日期
     */
    private Date supplierUdate;

    /**
     * 组织名
     */
    private String oriName;



    public String getSupplierID() {
        return supplierID;
    }

    public void setSupplierID(String supplierID) {
        this.supplierID = supplierID;
    }

    public String getSupplierType01() {
        return supplierType01;
    }

    public void setSupplierType01(String supplierType01) {
        this.supplierType01 = supplierType01;
    }

    public String getSupplierNbzz() {
        return supplierNbzz;
    }

    public void setSupplierNbzz(String supplierNbzz) {
        this.supplierNbzz = supplierNbzz;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getSupplierType02() {
        return supplierType02;
    }

    public void setSupplierType02(String supplierType02) {
        this.supplierType02 = supplierType02;
    }

    public String getSupplierJname() {
        return supplierJname;
    }

    public void setSupplierJname(String supplierJname) {
        this.supplierJname = supplierJname;
    }

    public String getSupplierFr() {
        return supplierFr;
    }

    public void setSupplierFr(String supplierFr) {
        this.supplierFr = supplierFr;
    }

    public String getSupplierFrphone() {
        return supplierFrphone;
    }

    public void setSupplierFrphone(String supplierFrphone) {
        this.supplierFrphone = supplierFrphone;
    }

    public String getSupplierAddress() {
        return supplierAddress;
    }

    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }

    public String getSupplierCode() {
        return supplierCode;
    }

    public void setSupplierCode(String supplierCode) {
        this.supplierCode = supplierCode;
    }

    public String getSupplierLxr() {
        return supplierLxr;
    }

    public void setSupplierLxr(String supplierLxr) {
        this.supplierLxr = supplierLxr;
    }

    public String getSupplierLphone() {
        return supplierLphone;
    }

    public void setSupplierLphone(String supplierLphone) {
        this.supplierLphone = supplierLphone;
    }

    public String getSupplierMail() {
        return supplierMail;
    }

    public void setSupplierMail(String supplierMail) {
        this.supplierMail = supplierMail;
    }

    public Date getSupplierDate() {
        return supplierDate;
    }

    public void setSupplierDate(Date supplierDate) {
        this.supplierDate = supplierDate;
    }

    public Date getSupplierUdate() {
        return supplierUdate;
    }

    public void setSupplierUdate(Date supplierUdate) {
        this.supplierUdate = supplierUdate;
    }

    public String getOriName() {
        return oriName;
    }

    public void setOriName(String oriName) {
        this.oriName = oriName;
    }

    @Override
    public String toString() {
        return "SupplierEntity{" +
                "supplierID='" + supplierID + '\'' +
                ", supplierType01='" + supplierType01 + '\'' +
                ", supplierNbzz='" + supplierNbzz + '\'' +
                ", supplierName='" + supplierName + '\'' +
                ", supplierType02='" + supplierType02 + '\'' +
                ", supplierJname='" + supplierJname + '\'' +
                ", supplierFr='" + supplierFr + '\'' +
                ", supplierFrphone='" + supplierFrphone + '\'' +
                ", supplierAddress='" + supplierAddress + '\'' +
                ", supplierCode='" + supplierCode + '\'' +
                ", supplierLxr='" + supplierLxr + '\'' +
                ", supplierLphone='" + supplierLphone + '\'' +
                ", supplierMail='" + supplierMail + '\'' +
                ", supplierDate=" + supplierDate +
                ", supplierUdate=" + supplierUdate +
                ", oriName='" + oriName + '\'' +
                '}';
    }
}
