package com.zhg.javakc.modules.supply.supplies.entity;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:30
 * @Version 1.0
 */
public class SuppliesEntity {

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
}
