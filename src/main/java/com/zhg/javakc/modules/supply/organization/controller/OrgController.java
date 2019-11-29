package com.zhg.javakc.modules.supply.organization.controller;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.organization.entity.OrgEntity;
import com.zhg.javakc.modules.supply.organization.service.OrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:32
 * @Version 1.0
 */
@Controller
@RequestMapping("/org")
public class OrgController {

    @Autowired
    OrgService orgService;

    @RequestMapping("queryAllOrg")
    @ResponseBody
    public List<Map<String,Object>>queryAllOrg(){
        List<Map<String,Object>> list =orgService.queryAllOrg();
        return list;
    }

    @RequestMapping("save")
    public String save (OrgEntity orgEntity){
        orgEntity.setOriId(CommonUtil.uuid());
        orgService.save(orgEntity);
        return "redirect:shuaxin.do";
    }

    @RequestMapping("view")
    public String view (String oriId, ModelMap modelMap){
        OrgEntity orgEntity =orgService.get(oriId);
        modelMap.put("orgEntity",orgEntity);
        return "supply/organization/update";
    }



    @RequestMapping("update")
    public String update(OrgEntity orgEntity){
        orgService.updateOri(orgEntity);
        return"supply/organization/list";
    }

    @RequestMapping("delete")
    public String delete(String oriId){
        //得到当前oriId下的所有子节点数据
        List<Map<String,Object>> list=orgService.queryByOriId(oriId);
        if (list != null && list.size()>0){
            for (Map<String,Object>map :list) {
                delete (map.get("id").toString());
            }
            orgService.deleteOri(oriId);
        }else {
            //删除当前节点
            orgService.deleteOri(oriId);
        }
        return "redirect:shuaxin.do";
    }


    @RequestMapping("shuaxin")
    public String shuaxin (){
        return "supply/organization/list";
    }


}
