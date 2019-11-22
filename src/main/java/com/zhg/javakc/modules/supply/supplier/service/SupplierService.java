package com.zhg.javakc.modules.supply.supplier.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:37
 * @Version 1.0
 */
@Service
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {

    @Autowired
    SupplierDao supplierDao;
}
