package com.yupi.project.service.impl;

import com.yupi.project.service.UserInterfaceInfoService;
import com.yupi.yuapicommon.service.InnerUserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * yuapi_backend com.yupi.project.service.impl
 * 2024/5/23 17:17
 * @Author LD
 */
@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        // 调用注入的 UserInterfaceInfoService 的 invokeCount 方法
        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }

    @Override
    public void checkUserCallQuota(long interfaceInfoId, long userId) {
        userInterfaceInfoService.checkUserCallQuota(interfaceInfoId, userId);
    }


}
