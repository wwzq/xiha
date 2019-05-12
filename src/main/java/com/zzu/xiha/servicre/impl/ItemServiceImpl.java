package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.ItemDao;
import com.zzu.xiha.entity.Item;
import com.zzu.xiha.servicre.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {
    @Autowired
    private ItemDao dao;

    @Override
    public Boolean insert(Item item) {
        Integer insert = dao.insert(item);
        if (insert == 1) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Item> selectByUser(Integer userId) {
        return dao.selectByUser(userId);
    }

    @Override
    public List<Item> selectByCar(Integer carId) {
        return dao.selectByCar(carId);
    }

    @Override
    public Boolean updatePay(Integer id) {
        Integer integer = dao.updatePay(id);
        return integer == 1 ? true : false;
    }
}
