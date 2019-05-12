package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.CrowdorderingDao;
import com.zzu.xiha.entity.Crowdordering;
import com.zzu.xiha.servicre.CrowdorderingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CrowdorderingServiceImpl implements CrowdorderingService {
    @Autowired
    private CrowdorderingDao dao;

    @Override
    public List<Crowdordering> selectHot() {
        return dao.selectHot();
    }

    @Override
    public List<Crowdordering> selectByCity(Integer btcityId, Integer toCityId) {
        return dao.selectByCity(btcityId, toCityId);
    }

    @Override
    public List<Crowdordering> selectByBeCity(Integer bCityId) {
        return dao.selectByBeCity(bCityId);
    }

    @Override
    public Boolean insert(Crowdordering crowdordering) {
        Integer insert = dao.insert(crowdordering);
        if (insert == 1) {
            return true;
        } else {
            return false;
        }
    }
}
