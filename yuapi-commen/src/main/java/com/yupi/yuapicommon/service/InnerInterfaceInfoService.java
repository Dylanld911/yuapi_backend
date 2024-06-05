package com.yupi.yuapicommon.service;


import com.yupi.yuapicommon.model.entity.InterfaceInfo;

/**
* @author Micro
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2024-05-16 19:44:54
*/
public interface InnerInterfaceInfoService {

    InterfaceInfo getInterfaceInfo(String path,String method);
}
