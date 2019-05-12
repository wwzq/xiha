package com.zzu.xiha.dao;

import com.zzu.xiha.entity.Appraise;

import java.util.List;

public interface AppraiseDao {
    Integer insert(Appraise appraise);

    List<Appraise> selectByUserId(Integer userId);

    List<Appraise> selectByCarId(Integer carId);

    Integer deleteOne(Integer id);
}
