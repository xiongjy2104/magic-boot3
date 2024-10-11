-- ----------------------------
-- Table structure for magic_api_file
-- ----------------------------
DROP TABLE IF EXISTS `magic_api_file`;
CREATE TABLE `magic_api_file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `file_path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `file_content` text NOT NULL COMMENT '文件内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of magic_api_file
-- ----------------------------
BEGIN;
INSERT INTO `magic_api_file` VALUES (1, '/magic-api/api/', 'this is directory');
INSERT INTO `magic_api_file` VALUES (2, '/magic-api/backups/', 'this is directory');
INSERT INTO `magic_api_file` VALUES (3, '/magic-api/function/', 'this is directory');
INSERT INTO `magic_api_file` VALUES (4, '/magic-api/api/用户管理/', 'this is directory');
INSERT INTO `magic_api_file` VALUES (5, '/magic-api/api/用户管理/group.json', '{\n  \"id\" : \"bd2bf1fee496480483792f0fd1be0660\",\n  \"name\" : \"用户管理\",\n  \"type\" : \"1\",\n  \"parentId\" : \"0\",\n  \"path\" : \"/users\"\n}');
INSERT INTO `magic_api_file` VALUES (6, '/magic-api/api/用户管理/用户列表.ms', '{\n  \"id\" : \"0aa254ad8815403f980881372042147f\",\n  \"script\" : null,\n  \"groupId\" : \"bd2bf1fee496480483792f0fd1be0660\",\n  \"name\" : \"用户列表\",\n  \"createTime\" : null,\n  \"updateTime\" : null,\n  \"method\" : \"GET\",\n  \"path\" : \"/list\",\n  \"parameters\" : [ ],\n  \"option\" : \"[]\",\n  \"requestBody\" : \"{}\",\n  \"headers\" : [ ],\n  \"paths\" : [ ],\n  \"responseBody\" : \"{\\n    \\\"code\\\": 1,\\n    \\\"message\\\": \\\"success\\\",\\n    \\\"data\\\": [\\n        {\\n            \\\"id\\\": 1,\\n            \\\"dept_id\\\": 1,\\n            \\\"user_name\\\": \\\"admin\\\",\\n            \\\"nick_name\\\": \\\"如梦技术\\\",\\n            \\\"email\\\": \\\"596392912@qq.com\\\",\\n            \\\"phone\\\": \\\"15888888888\\\",\\n            \\\"gender\\\": 1,\\n            \\\"avatar\\\": \\\"\\\",\\n            \\\"password\\\": \\\"$2a$04$G9osrOEAABaO.Oi35ssV3.duz.fEF/tET7MGg7W6ulCgKrWeg.Z6e\\\",\\n            \\\"is_admin\\\": true,\\n            \\\"enabled\\\": true,\\n            \\\"locked\\\": false,\\n            \\\"del_flag\\\": false,\\n            \\\"created_by\\\": \\\"admin\\\",\\n            \\\"created_at\\\": \\\"2018-03-16T11:33:00\\\",\\n            \\\"updated_by\\\": \\\"admin\\\",\\n            \\\"updated_at\\\": \\\"2020-05-21T22:22:46\\\",\\n            \\\"remark\\\": \\\"超级管理员\\\"\\n        },\\n        {\\n            \\\"id\\\": 2,\\n            \\\"dept_id\\\": 1,\\n            \\\"user_name\\\": \\\"mica\\\",\\n            \\\"nick_name\\\": \\\"如梦技术\\\",\\n            \\\"email\\\": \\\"596392912@qq.com\\\",\\n            \\\"phone\\\": \\\"15666666666\\\",\\n            \\\"gender\\\": 1,\\n            \\\"avatar\\\": \\\"\\\",\\n            \\\"password\\\": \\\"$2a$04$G9osrOEAABaO.Oi35ssV3.duz.fEF/tET7MGg7W6ulCgKrWeg.Z6e\\\",\\n            \\\"is_admin\\\": false,\\n            \\\"enabled\\\": true,\\n            \\\"locked\\\": false,\\n            \\\"del_flag\\\": false,\\n            \\\"created_by\\\": \\\"admin\\\",\\n            \\\"created_at\\\": \\\"2018-03-16T11:33:00\\\",\\n            \\\"updated_by\\\": \\\"admin\\\",\\n            \\\"updated_at\\\": \\\"2018-03-16T11:33:00\\\",\\n            \\\"remark\\\": \\\"普通用户\\\"\\n        },\\n        {\\n            \\\"id\\\": 3,\\n            \\\"dept_id\\\": 1,\\n            \\\"user_name\\\": \\\"test\\\",\\n            \\\"nick_name\\\": \\\"如梦技术\\\",\\n            \\\"email\\\": \\\"596392912@qq.com\\\",\\n            \\\"phone\\\": \\\"15666666666\\\",\\n            \\\"gender\\\": 1,\\n            \\\"avatar\\\": \\\"\\\",\\n            \\\"password\\\": \\\"$2a$04$G9osrOEAABaO.Oi35ssV3.duz.fEF/tET7MGg7W6ulCgKrWeg.Z6e\\\",\\n            \\\"is_admin\\\": false,\\n            \\\"enabled\\\": true,\\n            \\\"locked\\\": false,\\n            \\\"del_flag\\\": false,\\n            \\\"created_by\\\": \\\"admin\\\",\\n            \\\"created_at\\\": \\\"2018-03-16T11:33:00\\\",\\n            \\\"updated_by\\\": \\\"admin\\\",\\n            \\\"updated_at\\\": \\\"2018-03-16T11:33:00\\\",\\n            \\\"remark\\\": \\\"测试用户\\\"\\n        }\\n    ],\\n    \\\"timestamp\\\": 1617440226493,\\n    \\\"executeTime\\\": 41\\n}\",\n  \"description\" : null,\n  \"optionMap\" : { }\n}\r\n================================\r\nvar sql = \"\"\"\n    select * from sys_user;\n\"\"\"\nreturn db.select(sql);');
INSERT INTO `magic_api_file` VALUES (7, '/magic-api/api/通用接口/', 'this is directory');
INSERT INTO `magic_api_file` VALUES (8, '/magic-api/api/通用接口/group.json', '{\n  \"id\" : \"3d281ecb33cb4f229016cfd1d717e668\",\n  \"name\" : \"通用接口\",\n  \"type\" : \"1\",\n  \"parentId\" : \"0\",\n  \"path\" : \"/commons\"\n}');
INSERT INTO `magic_api_file` VALUES (9, '/magic-api/api/通用接口/获取验证码.ms', '{\n  \"id\" : \"bc6ecdc8774740e487b4660533090ea5\",\n  \"script\" : null,\n  \"groupId\" : \"3d281ecb33cb4f229016cfd1d717e668\",\n  \"name\" : \"获取验证码\",\n  \"createTime\" : null,\n  \"updateTime\" : null,\n  \"method\" : \"GET\",\n  \"path\" : \"/captcha\",\n  \"parameters\" : [ ],\n  \"option\" : \"[]\",\n  \"requestBody\" : \"{}\",\n  \"headers\" : [ ],\n  \"paths\" : [ ],\n  \"responseBody\" : \"{\\n    \\\"code\\\": 1,\\n    \\\"message\\\": \\\"success\\\",\\n    \\\"data\\\": {\\n        \\\"uuid\\\": \\\"f80feb4dcc8742669a2926eefa201bca\\\",\\n        \\\"base64\\\": \\\"data:image/jpeg;base64,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\\\"\\n    },\\n    \\\"timestamp\\\": 1617617649402,\\n    \\\"executeTime\\\": 24\\n}\",\n  \"description\" : null,\n  \"optionMap\" : { }\n}\r\n================================\r\nimport \'net.dreamlu.mica.captcha.service.ICaptchaService\' as captchaService; // 导入Spring中的bean\n// 生成base64验证码，mica-captcha，也支持图片验证码，具体请查看文档\nreturn captchaService.generateBase64Vo(uuid());');
INSERT INTO `magic_api_file` VALUES (10, '/magic-api/api/通用接口/获取用户ip信息.ms', '{\n  \"id\" : \"cf37bf44b4cc4a31935f584ca053c118\",\n  \"script\" : null,\n  \"groupId\" : \"3d281ecb33cb4f229016cfd1d717e668\",\n  \"name\" : \"获取用户ip信息\",\n  \"createTime\" : null,\n  \"updateTime\" : null,\n  \"method\" : \"GET\",\n  \"path\" : \"/ip\",\n  \"parameters\" : [ ],\n  \"option\" : \"[]\",\n  \"requestBody\" : \"{}\",\n  \"headers\" : [ ],\n  \"paths\" : [ ],\n  \"responseBody\" : \"{\\n    \\\"code\\\": 1,\\n    \\\"message\\\": \\\"success\\\",\\n    \\\"data\\\": {\\n        \\\"cityId\\\": null,\\n        \\\"country\\\": null,\\n        \\\"region\\\": null,\\n        \\\"province\\\": null,\\n        \\\"city\\\": \\\"内网IP\\\",\\n        \\\"isp\\\": \\\"内网IP\\\",\\n        \\\"dataPtr\\\": 16392,\\n        \\\"address\\\": \\\"内网IP\\\",\\n        \\\"addressAndIsp\\\": \\\"内网IP\\\"\\n    },\\n    \\\"timestamp\\\": 1617441236786,\\n    \\\"executeTime\\\": 53\\n}\",\n  \"description\" : null,\n  \"optionMap\" : { }\n}\r\n================================\r\nimport \'net.dreamlu.mica.ip2region.core.Ip2regionSearcher\' as ip2regionSearcher;\nimport \'net.dreamlu.mica.core.utils.WebUtil\'; // as 可以省略（省略的话是相当于 as 类名）\n// 读取用户当前 ip 地址信息\nreturn ip2regionSearcher.memorySearch(WebUtil.getIP());');
INSERT INTO `magic_api_file` VALUES (21, '/magic-api/datasource/', 'this is directory');
COMMIT;
