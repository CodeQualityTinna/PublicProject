package com.miaoshaproject.service;

import com.miaoshaproject.service.model.PromoModel;

/**
 * Created by hzllb on 2018/11/18.
 */
public interface PromoService {
    //根据itemid获取即将进行的或正在进行的秒杀活动
    PromoModel getPromoByItemId(Integer itemId);
    //活动发布
    void publishPromo(Integer promoId);

//生产秒杀用的令牌
public String generateSecondKillToken(Integer promoId,Integer itemId,Integer UserId);
}
