package com.anthotel.mini.mapper;

import com.anthotel.mini.dto.Hotel;
import com.anthotel.mini.dto.HotelRoom;
import com.anthotel.mini.dto.ReserveOrder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author: Devhui
 * @Date: 2020/3/17 20:19
 * @Email: devhui@ihui.ink
 * @Version: 1.0
 */

@Repository
public interface OrderMapper {

    int insertOrder(ReserveOrder order);

    List<Map> getOrders(String openId);
}
