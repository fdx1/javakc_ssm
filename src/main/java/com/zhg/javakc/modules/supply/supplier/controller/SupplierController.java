package com.zhg.javakc.modules.supply.supplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:36
 * @Version 1.0
 */
@Controller
@RequestMapping("/supplier")
public class SupplierController {

    @Autowired
    SupplierService supplierService;

    @RequestMapping("/query")
    public ModelAndView queryTest(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("/supply/supplier/list");
        Page<SupplierEntity> page=supplierService.queryTest(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    } //新增
    @RequestMapping("/save")
    public String save(SupplierEntity supplierEntity){
        Random r = new Random();
        int x = r.nextInt(1000001);
            x = x+7000000;
            String s =""+ x;
       supplierEntity.setSupplierID(s);
        supplierService.save(supplierEntity);
        return "redirect:query.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        supplierService.delete(ids);
        return "redirect:query.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        SupplierEntity supplierEntity =supplierService.get(ids);
        modelMap.put("supplierEntity",supplierEntity);
        return "supply/supplier/update";
    }

    @RequestMapping("/update")
    public String update(SupplierEntity supplierEntity){
        supplierService.update(supplierEntity);
        return "redirect:query.do";
    }

//    @RequestMapping("/createParent")
//    public String createParent(SupplierEntity entity, ModelMap model)
//    {
//        model.put("page", supplierService.findList(entity));
//        return "supply/supplier/ori";
//    }
}
