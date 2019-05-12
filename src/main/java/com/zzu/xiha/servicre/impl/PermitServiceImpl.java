package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.PermitDao;
import com.zzu.xiha.entity.Permit;
import com.zzu.xiha.servicre.PermitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PermitServiceImpl implements PermitService {
    @Autowired
    private PermitDao dao;

    @Override
    public Boolean insert(Permit permit) {
        Integer insert = dao.insert(permit);
        return insert == 1 ? true : false;
    }
}
