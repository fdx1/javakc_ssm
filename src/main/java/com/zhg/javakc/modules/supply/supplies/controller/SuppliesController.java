package com.zhg.javakc.modules.supply.supplies.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.supplies.entity.SuppliesEntity;
import com.zhg.javakc.modules.supply.supplies.service.SuppliesService;
import com.zhg.javakc.modules.supply.suppliestype.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:29
 * @Version 1.0
 */
@Controller
@RequestMapping("/supplies")
public class SuppliesController {

    @Autowired
    SuppliesService suppliesService;

    @Autowired
    TypeService typeService;

    /**
     * 查询
     * @param suppliesEntity
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/querySupplies")
    public ModelAndView querySupplies(SuppliesEntity suppliesEntity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("supply/supplies/list");
        Page<SuppliesEntity> page=suppliesService.querySupplies(suppliesEntity,new Page<SuppliesEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    /**
     * 新增
     * @param suppliesEntity
     * @return
     */
    @RequestMapping("/save")
    public String save( SuppliesEntity suppliesEntity,@RequestParam(value = "goodsPicture") CommonsMultipartFile goodsPicture )
    {

        try {
            String path= ResourceUtils.getURL("classpath:").getPath();
            String originalFilename=goodsPicture.getOriginalFilename();
            String newName= UUID.randomUUID()+originalFilename;
            File goodsFile=new File(path+newName);
            goodsPicture.transferTo(goodsFile);

            byte[] att= FileCopyUtils.copyToByteArray(goodsFile);
            suppliesEntity.setGoodsPicture(att);
            suppliesEntity.setGoodsId(CommonUtil.uuid());
            suppliesEntity.setUpdateDate(new Date());
            suppliesService.save(suppliesEntity);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:querySupplies.do";
    }

    /**
     * 删除
     * @param ids
     * @return
     */
    @RequestMapping("/delete")
    public String delete(String[] ids)
    {
        suppliesService.delete(ids);
        return "redirect:querySupplies.do";
    }

    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        SuppliesEntity suppliesEntity=suppliesService.get(ids);
        modelMap.put("suppliesEntity",suppliesEntity);
        return "supply/supplies/update";
    }

    @RequestMapping("/update")
    public String update(SuppliesEntity suppliesEntity){
        suppliesService.update(suppliesEntity);
        return "redirect:querySupplies.do";
    }

    @RequestMapping("/createParent")
    public String createParent(SuppliesEntity entity, ModelMap model)
    {
        model.put("page", suppliesService.findList(entity));
        return "supply/supplies/type";
    }
}
