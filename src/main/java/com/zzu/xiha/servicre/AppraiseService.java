package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.Appraise;

import java.util.List;

public interface AppraiseService {
    Boolean insert(Appraise appraise);

    List<Appraise> selectByUserId(Integer userId);

    List<Appraise> selectByCarId(Integer carId);

    Boolean deleteOne(Integer id);
}
