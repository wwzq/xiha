package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.Item;

import java.util.List;

public interface ItemService {
    Boolean insert(Item item);

    List<Item> selectByUser(Integer userId);

    List<Item> selectByCar(Integer carId);

    Boolean updatePay(Integer id);
}
