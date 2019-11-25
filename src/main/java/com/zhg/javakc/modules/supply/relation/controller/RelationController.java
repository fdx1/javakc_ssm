package com.zhg.javakc.modules.supply.relation.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.relation.entity.RelationEntity;
import com.zhg.javakc.modules.supply.relation.service.RelationService;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:38
 * @Version 1.0
 */
@Controller
@RequestMapping("/relation")
public class RelationController {

    @Autowired
    RelationService relationService;

    @RequestMapping("/queryRelation")
    public ModelAndView queryRelation(RelationEntity relationEntity, HttpServletRequest request, HttpServletResponse response) {

        ModelAndView modelAndView = new ModelAndView("relation/list");
        Page<RelationEntity> page = relationService.queryRelation(relationEntity, new Page<RelationEntity>(request, response));
        modelAndView.addObject("page", page);
        return modelAndView;

    }
    //删除
    @RequestMapping("/delete")
    public String delete(String[] ids){
        relationService.delete(ids);
        return "redirect:queryRelation.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        RelationEntity relationEntity =relationService.get(ids);
        modelMap.put("relationEntity",relationEntity);
        return "relation/update";
    }


    @RequestMapping("/update")
    public String update(RelationEntity relationEntity){
        relationService.update(relationEntity);
        return "redirect:queryRelation.do";
    }

    @RequestMapping(value="/createParent")
    public String createParent(RelationEntity entity, ModelMap model) throws Exception
    {
        model.put("page", relationService.findList(entity));
        return "system/menu/create-parent";
    }

    //新增
    @RequestMapping("/save")
    public String save(RelationEntity relationEntity){
        //设置ID，获取uuid
        relationEntity.setSsId(CommonUtil.uuid());
        relationService.save(relationEntity);
        return "redirect:queryRelation.do";
    }
}
