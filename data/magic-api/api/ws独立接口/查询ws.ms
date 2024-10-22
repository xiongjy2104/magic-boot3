{
  "properties" : { },
  "id" : "880e19da034148318b1c263cd8e58a47",
  "script" : null,
  "groupId" : "3d73e9ac40514a28b2e4511c59d208d9",
  "name" : "查询ws",
  "createTime" : null,
  "updateTime" : 1729569172420,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/ws/queryWs",
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
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
return db.selectOne("""
    select id,name,sex,head_portrait,remarks from t_data_test where id = #{id}
""")