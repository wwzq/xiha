package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.AppraiseDao;
import com.zzu.xiha.entity.Appraise;
import com.zzu.xiha.servicre.AppraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AppraiseServiceImpl implements AppraiseService {
    @Autowired
    private AppraiseDao dao;

    @Override
    public Boolean insert(Appraise appraise) {
        Integer insert = dao.insert(appraise);
        return insert == 1 ? true : false;
    }

    @Override
    public List<Appraise> selectByUserId(Integer userId) {
        return dao.selectByUserId(userId);
    }

    @Override
    public List<Appraise> selectByCarId(Integer carId) {
        return dao.selectByCarId(carId);
    }

    @Override
    public Boolean deleteOne(Integer id) {
        Integer integer = dao.deleteOne(id);
        return integer == 1 ? true : false;
    }
}
