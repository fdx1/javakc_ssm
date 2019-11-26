package com.zhg.javakc.modules.supply.suppliestype.service;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.suppliestype.dao.TypeDao;
import com.zhg.javakc.modules.supply.suppliestype.entity.TypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:24
 * @Version 1.0
 */
@Service
public class TypeService extends BaseService<TypeDao,TypeEntity> {

    @Autowired
     TypeDao typeDao;

    public List<Map<String,Object>> queryAllType() {

        return typeDao.queryAllType();
    }
    public List<Map<String,Object>> queryByTypeId(String typeId) {

        return typeDao.queryByTypeId(typeId);
    }
    public void deleteType(String typeId){

        typeDao.deleteType(typeId);
    }
    public void updateType(TypeEntity typeEntity) {

        typeDao.updateType(typeEntity);
    }
}
