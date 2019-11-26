package com.zhg.javakc.modules.supply.suppliestype.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supply.suppliestype.entity.TypeEntity;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:24
 * @Version 1.0
 */
public interface TypeDao extends BaseDao<TypeEntity> {

    public List<Map<String,Object>> queryAllType();
    public List<Map<String,Object>> queryByTypeId(String typeId);
    public void deleteType(String typeId);
    public void updateType(TypeEntity typeEntity);

}
