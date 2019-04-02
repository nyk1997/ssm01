package com.hwua.dao;

import com.hwua.entity.Goods;

import java.util.List;

public interface GoodsDao {

    public List<Goods> selectAllGoods();

  /*  //分页查询
    public List<Goods> selectAllGoodsForPage(int pageNumber,int pageSize);*/

    public Goods selectGoodsById(Integer goods_id);


}
