package com.zhg.javakc.modules.supply.supplier.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:37
 * @Version 1.0
 */
public interface SupplierDao extends BaseDao<SupplierEntity> {
    public List<Map<String, Object>> findAll();
}
