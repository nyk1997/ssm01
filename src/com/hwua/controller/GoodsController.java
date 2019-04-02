package com.hwua.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.hwua.entity.Goods;
import com.hwua.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    GoodsService goodsService;
//查询所有商品
    @RequestMapping(value = "/getGoods",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getGoods(){
        //List<Goods> list = goodsService.selectAllGoods();
        List<Goods> list = goodsService.selectAllGoodsForPage(1,12);
        String str = JSON.toJSONString(list);

        return str;
    }

    @RequestMapping(value = "/selectGoodsById")
    public String selectGoodsById(HttpServletRequest req, HttpServletResponse res){
       String goods_id1=req.getParameter("goods_id");
       int goods_id=Integer.parseInt(goods_id1);
        Goods goods = goodsService.selectGoodsById(goods_id);
        req.setAttribute("goods",goods);
        return "product_view";
    }

}
