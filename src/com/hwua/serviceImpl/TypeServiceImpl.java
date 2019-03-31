package com.hwua.serviceImpl;

import com.hwua.dao.TypeDao;
import com.hwua.entity.Goods;
import com.hwua.entity.Type;
import com.hwua.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service

public class TypeServiceImpl implements TypeService {

    @Autowired
    TypeDao typeDao;
//查询商品类型
    @Override
    public List<Type> selectAllType() {
        List<Type> list = typeDao.selectAllType();
        return list;
    }
    //查询商品大类型
    @Override
    public List<Type> selectAllBigType() {
        List<Type> list = typeDao.selectAllBigType();
        return list;
    }
    //查询商品小类型根据大类型
    @Override
    public List<Type> selectAllSmallTypeByBigType(int type_id) {
        List<Type> list = typeDao.selectAllSmallTypeByBigType(type_id);
        return list;
    }
}
