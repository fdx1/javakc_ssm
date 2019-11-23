package com.zhg.javakc.modules.supply.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:37
 * @Version 1.0
 */
@Service
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {

    @Autowired
    SupplierDao supplierDao;

    /**
     * 分页查询
     * @param supplierEntity
     * @param page
     * @return page
     */
    public Page<SupplierEntity> queryTest(SupplierEntity supplierEntity, Page<SupplierEntity> page){
        //设置分页参数，才会被mybatis分页插件识别，拦截sql，再其sql的前后加入分页sql
        supplierEntity.setPage(page);
        //根据分页与查询条件进行测试查询
        List<SupplierEntity> testList=supplierDao.findList(supplierEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(testList);
        return page;
    }
}
