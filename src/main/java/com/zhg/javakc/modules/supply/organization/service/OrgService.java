package com.zhg.javakc.modules.supply.organization.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.organization.dao.OrgDao;
import com.zhg.javakc.modules.supply.organization.entity.OrgEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:34
 * @Version 1.0
 */
@Service
public class OrgService extends BaseService<OrgDao, OrgEntity> {

    @Autowired
    OrgDao orgDao;

    public List<Map<String,Object>> queryAllOrg(){
        return orgDao.queryAllOrg();
    }

    public List<Map<String,Object>> queryByOriId(String oriId){
        return orgDao.queryByOriId(oriId);
    }

    public void deleteOri(String oriId){
        orgDao.deleteOri(oriId);
    }

    public void updateOri(OrgEntity orgEntity){
        orgDao.updateOri(orgEntity);
    }



}
