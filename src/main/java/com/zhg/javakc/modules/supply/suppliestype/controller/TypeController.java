package com.zhg.javakc.modules.supply.suppliestype.controller;


import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.suppliestype.entity.TypeEntity;
import com.zhg.javakc.modules.supply.suppliestype.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:23
 * @Version 1.0
 */
@Controller
@RequestMapping("/type")
public class TypeController {

    @Autowired
     TypeService typeService;

    @RequestMapping("/queryAllType")
    @ResponseBody
    public List<Map<String,Object>> queryAllType() {

        List<Map<String,Object>> list=typeService.queryAllType();
        return list;
    }

    //新增
    @RequestMapping("/save")
    public String save(TypeEntity typeEntity){
        //设置ID，获取uuid
        typeEntity.setTypeId(CommonUtil.uuid());
        typeService.save(typeEntity);
        return "supply/suppliestype/list";
    }

    @RequestMapping("/view")
    public String view(String typeId, ModelMap modelMap){
        TypeEntity typeEntity =typeService.get(typeId);
        modelMap.put("typeEntity",typeEntity);
        return "supply/suppliestype/update";
    }


    @RequestMapping("/update")
    public String update(TypeEntity typeEntity){

        typeService.updateType(typeEntity);
        return "supply/suppliestype/list";
    }

    @RequestMapping("/delete")
    public String delete(String typeId){
//        ##得到当前typeId下的所有子节点数据
        List<Map<String,Object>>list = typeService.queryByTypeId(typeId);
        if (null !=list && list.size()>0){
            for (Map<String,Object> map:list){
                delete(map.get("id").toString());
            }
        }else {
//            ##删除当前节点
            typeService.deleteType(typeId);
        }
        return "supply/suppliestype/list";
    }
}
