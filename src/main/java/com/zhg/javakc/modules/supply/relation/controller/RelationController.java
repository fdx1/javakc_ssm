package com.zhg.javakc.modules.supply.relation.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.relation.entity.RelationEntity;
import com.zhg.javakc.modules.supply.relation.service.RelationService;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.supplier.service.SupplierService;
import com.zhg.javakc.modules.supply.supplies.entity.SuppliesEntity;
import com.zhg.javakc.modules.supply.supplies.service.SuppliesService;
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
    @Autowired
    SupplierService supplierService;
    @Autowired
    SuppliesService suppliesService;


    @RequestMapping("/queryRelation")
    public ModelAndView queryRelation(RelationEntity relationEntity, HttpServletRequest request, HttpServletResponse response) {

        ModelAndView modelAndView = new ModelAndView("supply/relation/list");
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
        return "supply/relation/update";
    }


    @RequestMapping("/update")
    public String update(RelationEntity relationEntity){
        relationService.update(relationEntity);
        return "redirect:queryRelation.do";
    }


    //新增
    @RequestMapping("/save")
    public String save(RelationEntity relationEntity){
        //设置ID，获取uuid
        relationEntity.setSsId(CommonUtil.uuid());
        relationService.save(relationEntity);
        return "redirect:queryRelation.do";
    }

    @RequestMapping("/createZz")
    public String createParent(SupplierEntity entity, ModelMap model)
    {
        model.put("list",supplierService.findList(entity));

        return "supply/relation/create-zz";
    }

    @RequestMapping("/createWz")
    public String createParen(SuppliesEntity entity, ModelMap model)
    {
        model.put("list",suppliesService.findList(entity));

        return "supply/relation/create-wz";
    }
}
