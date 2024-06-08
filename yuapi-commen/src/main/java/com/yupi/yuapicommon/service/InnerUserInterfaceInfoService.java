package com.yupi.yuapicommon.service;


/**
 * @author Micro
 * @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
 * @createDate 2024-05-20 19:31:08
 */
public interface InnerUserInterfaceInfoService {
    // void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add);

    boolean invokeCount(long interfaceInfoId, long userId);

    void checkUserCallQuota(long interfaceInfoId, long userId);
}
