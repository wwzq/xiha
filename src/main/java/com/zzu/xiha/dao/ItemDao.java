package com.zzu.xiha.dao;

import com.zzu.xiha.entity.Item;

import java.util.List;

public interface ItemDao {
    Integer insert(Item item);

    List<Item> selectByUser(Integer userId);

    List<Item> selectByCar(Integer carId);

    Integer updatePay(Integer id);
}
