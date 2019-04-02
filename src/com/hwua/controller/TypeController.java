package com.hwua.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hwua.entity.Type;
import com.hwua.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TypeController {

    @Autowired
    TypeService typeService;
//查询所有商品类型
public String selectAllType(){
   List<Type> list=typeService.selectAllType();
    return "";
}

//查询所有商品大类型
  @RequestMapping(value = "/selectAllBigType",produces ="text/html;charset=UTF-8" )
@ResponseBody
  public String selectAllBigType(){

    List<Type> list = typeService.selectAllBigType();
    String str = JSON.toJSONString(list);
    return str;
}


//根据大类型id查询所有商品小类型


//查询所有大类型和包含的小类型
@RequestMapping(value = "/selectAllTypeForOrder",produces ="text/html;charset=UTF-8" )
@ResponseBody
//创建了一个map集合存所有类型，查出大类型，循环出大类型集合，通过大类型id查小类型
public String selectAllTypeForOrder(){
     List<List<Type>> list=new ArrayList<List<Type>>();
        List<Type> big = typeService.selectAllBigType();
    for(int i=0;i<big.size();i++){
        List<Type> small=typeService.selectAllSmallTypeByBigType(big.get(i).getType_big());
      //把每组数据存放入map集合中
      list.add(small);
    }
    String str = JSONObject.toJSONString(list);

    return str;
}



}
