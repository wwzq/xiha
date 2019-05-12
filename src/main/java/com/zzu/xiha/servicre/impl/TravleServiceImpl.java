package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.TravleDao;
import com.zzu.xiha.entity.Travle;
import com.zzu.xiha.servicre.TravleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TravleServiceImpl implements TravleService {
    @Autowired
    private TravleDao dao;

    @Override
    public Boolean insert(Travle travle) {
        Integer insert = dao.insert(travle);
        return insert == 1 ? true : false;
    }

    @Override
    public List<Travle> selectByUser(Integer userId) {
        return dao.selectByUser(userId);
    }

    @Override
    public List<Travle> selectByCar(Integer carId) {
        return dao.selectByCar(carId);
    }

    @Override
    public Boolean delete(Integer id) {
        Integer delete = dao.delete(id);
        return delete == 1 ? true : false;
    }
}
