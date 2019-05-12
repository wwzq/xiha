package com.zzu.xiha.dao;

import com.zzu.xiha.entity.Crowdordering;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CrowdorderingDao {
    List<Crowdordering> selectHot();

    List<Crowdordering> selectByCity(@Param("btcityId") Integer btcityId, @Param("toCityId") Integer toCityId);

    List<Crowdordering> selectByBeCity(Integer bCityId);

    Integer insert(Crowdordering crowdordering);
}
