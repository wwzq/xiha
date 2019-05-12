package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.DrivingDao;
import com.zzu.xiha.entity.Driving;
import com.zzu.xiha.servicre.DrivingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DrivingServiceImpl implements DrivingService {
    @Autowired
    private DrivingDao dao;

    @Override
    public Boolean insert(Driving driving) {
        Integer insert = dao.insert(driving);
        return insert == 1 ? true : false;
    }
}
