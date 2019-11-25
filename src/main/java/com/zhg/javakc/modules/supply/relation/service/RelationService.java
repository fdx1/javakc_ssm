package com.zhg.javakc.modules.supply.relation.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.relation.dao.RelationDao;
import com.zhg.javakc.modules.supply.relation.entity.RelationEntity;
import com.zhg.javakc.modules.supply.suppliestype.dao.TypeDao;
import com.zhg.javakc.modules.supply.suppliestype.entity.TypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:40
 * @Version 1.0
 */
@Service
public class RelationService extends BaseService<RelationDao, RelationEntity> {

    @Autowired
    RelationDao relationDao;

    public Page<RelationEntity> queryRelation(RelationEntity relationEntity, Page<RelationEntity> page){
        //设置分页参数，才会被mybatis分页插件识别，拦截sql，再其sql的前后加入分页sql
        relationEntity.setPage(page);
        //根据分页与查询条件进行测试查询
        List<RelationEntity> relationList=relationDao.findList(relationEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(relationList);
        return page;
    }
}
