package com.zhg.javakc.modules.supply.supplies.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.supplies.dao.SuppliesDao;
import com.zhg.javakc.modules.supply.supplies.entity.SuppliesEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:31
 * @Version 1.0
 */
@Service
public class SuppliesService extends BaseService<SuppliesDao,SuppliesEntity> {

    @Autowired
    SuppliesDao suppliesDao;

    public Page<SuppliesEntity> querySupplies(SuppliesEntity suppliesEntity,Page<SuppliesEntity> page){
        //设置分页参数
        suppliesEntity.setPage(page);
        //根据分页与查询条件进行测试查询
        List<SuppliesEntity> suppliesList=suppliesDao.findList(suppliesEntity);
        //将查询数据设置到分页类的List集合中，一起返回
       page.setList(suppliesList);
        return page;
    }
}
