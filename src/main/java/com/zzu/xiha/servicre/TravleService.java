package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.Travle;

import java.util.List;

public interface TravleService {
    Boolean insert(Travle travle);

    List<Travle> selectByUser(Integer userId);

    List<Travle> selectByCar(Integer carId);

    Boolean delete(Integer id);
}
