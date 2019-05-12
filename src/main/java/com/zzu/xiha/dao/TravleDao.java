package com.zzu.xiha.dao;

import com.zzu.xiha.entity.Travle;

import java.util.List;

public interface TravleDao {
    Integer insert(Travle travle);

    List<Travle> selectByUser(Integer userId);

    List<Travle> selectByCar(Integer carId);

    Integer delete(Integer id);
}
