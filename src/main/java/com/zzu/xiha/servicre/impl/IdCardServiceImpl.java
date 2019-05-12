package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.IdCardDao;
import com.zzu.xiha.entity.IdCard;
import com.zzu.xiha.servicre.IdCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IdCardServiceImpl implements IdCardService {
    @Autowired
    private IdCardDao dao;

    @Override
    public Boolean insert(IdCard idCard) {
        Integer insert = dao.insert(idCard);
        return insert == 1 ? true : false;
    }
}
