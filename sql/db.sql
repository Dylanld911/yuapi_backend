-- 接口信息
CREATE TABLE IF NOT EXISTS `interface_info`
(
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键' PRIMARY KEY,
    `name` varchar(256) NOT NULL COMMENT '名称',
    `description` varchar(256) NULL COMMENT '描述',
    `url` varchar(512) NOT NULL COMMENT '接口地址',
    `requestParams` text not null COMMENT '请求参数',
    `requestHeader` text NOT NULL COMMENT '请求头(JSON格式)',
    `responseHeader` text NULL COMMENT '响应头(JSON格式)',
    `status` int NOT NULL DEFAULT 0 COMMENT '接口状态（0-关闭，1-开启）',
    `method` varchar(256) NOT NULL COMMENT '请求类型',
    `userId` bigint NOT NULL COMMENT '创建人',
    `createTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '创建时间',
    `updateTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `isDelete` tinyint DEFAULT 0 NOT NULL COMMENT '是否删除（0-未删，1-已删）'
    ) COMMENT '接口信息';


insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('袁子轩', '方晟睿', 'www.kris-hegmann.net', '许俊驰', '尹明哲', 0, '徐鹏煊', 7358);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('王泽洋', '江果', 'www.ursula-barton.net', '崔驰', '田天宇', 0, '邓瑞霖', 62027922);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('石语堂', '姜鹏煊', 'www.gema-orn.name', '袁健柏', '郑子轩', 0, '金浩然', 583846241);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('杨明', '崔皓轩', 'www.elvin-hills.name', '汪文昊', '黎晓博', 0, '马金鑫', 92895336);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('曹昊然', '范烨霖', 'www.elden-reichel.io', '魏烨华', '高瑾瑜', 0, '胡聪健', 2);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏博超', '沈语堂', 'www.lorrie-gerhold.name', '武鹤轩', '曾文轩', 0, '魏烨霖', 25210);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陈致远', '杜子轩', 'www.rickie-dickinson.name', '赖笑愚', '许烨霖', 0, '韩立果', 31787188);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('魏子涵', '李琪', 'www.shera-harber.org', '万明哲', '陈晓博', 0, '薛金鑫', 108573729);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('于明', '蒋博涛', 'www.keshia-mayer.com', '史文昊', '谢瑾瑜', 0, '范鹭洋', 9684507708);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('史弘文', '胡伟宸', 'www.brigid-stoltenberg.com', '贾果', '郝健雄', 0, '张驰', 222496);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('蒋越彬', '杨明', 'www.marilee-batz.biz', '洪晓博', '郭懿轩', 0, '白潇然', 9100175);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('彭弘文', '谭文', 'www.kevin-waters.co', '潘琪', '洪风华', 0, '雷烨华', 9063);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('贺苑博', '邓峻熙', 'www.ernesto-labadie.org', '毛健柏', '白立果', 0, '何文博', 6569706);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郝鹤轩', '田立果', 'www.lanie-brekke.com', '江鹏涛', '孟晟睿', 0, '万健雄', 3);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('贺鹏', '谭煜祺', 'www.mao-bosco.co', '唐正豪', '蔡金鑫', 0, '梁鸿煊', 8645212928);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('谭峻熙', '秦修杰', 'www.geoffrey-kilback.io', '宋乐驹', '王修洁', 0, '钟健雄', 2);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('何炫明', '李烨磊', 'www.zachery-bernhard.org', '邹越彬', '许煜城', 0, '林博超', 46344294);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('魏彬', '苏立轩', 'www.shayne-romaguera.org', '段明', '杜建辉', 0, '石雨泽', 977);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陶博涛', '邱弘文', 'www.aletha-gibson.name', '曹明轩', '黎乐驹', 0, '贾越彬', 269668);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('顾昊焱', '余泽洋', 'www.boyce-luettgen.name', '孔驰', '萧文昊', 0, '曹俊驰', 4556547970);
