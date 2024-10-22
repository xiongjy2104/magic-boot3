{
  "properties" : { },
  "id" : "25ba2ad6bbb14aa0992a1ca2c75140f0",
  "script" : null,
  "groupId" : "7bdcc43555b9419caba2ee722e1aa2d3",
  "name" : "详情",
  "createTime" : null,
  "updateTime" : 1729564042920,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/get",
  "method" : "GET",
  "parameters" : [ {
    "name" : "id",
    "value" : "1",
    "description" : null,
    "required" : true,
    "dataType" : "Integer",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ {
    "name" : "permission",
    "value" : "data:test:view",
    "description" : "允许拥有该权限的访问",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": null,\n    \"timestamp\": 1729563749369,\n    \"executeTime\": 11\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
return db.selectOne("""
    select id,name,sex,head_portrait,remarks from t_data_test where id = #{id}
""")