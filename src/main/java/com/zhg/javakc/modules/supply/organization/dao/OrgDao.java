package com.zhg.javakc.modules.supply.organization.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supply.organization.entity.OrgEntity;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:33
 * @Version 1.0
 */
public interface OrgDao extends BaseDao<OrgEntity> {

    public List<Map<String ,Object>> queryAllOrg();
    public List<Map<String,Object>> queryByOriId(String oriId);
    public void deleteOri(String oriId);
    public void updateOri(OrgEntity orgEntity );


}
