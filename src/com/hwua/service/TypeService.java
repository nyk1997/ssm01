package com.hwua.service;
import com.hwua.entity.Goods;
import com.hwua.entity.Type;

import java.util.List;

public interface TypeService {
    //查询所有商品类型
    public List<Type> selectAllType();
    //查询商品大类型
    public List<Type> selectAllBigType();
    //查询大类型对应的商品小类型
    public List<Type> selectAllSmallTypeByBigType(int type_id);
}
