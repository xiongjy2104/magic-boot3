package org.ssssssss.magicboot.interceptor;


import cn.dev33.satoken.stp.StpUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.ssssssss.magicapi.core.context.MagicUser;
import org.ssssssss.magicapi.core.context.RequestEntity;
import org.ssssssss.magicapi.core.exception.MagicLoginException;
import org.ssssssss.magicapi.core.interceptor.Authorization;
import org.ssssssss.magicapi.core.interceptor.RequestInterceptor;
import org.ssssssss.magicapi.core.model.ApiInfo;
import org.ssssssss.magicapi.core.model.Group;
import org.ssssssss.magicapi.core.model.MagicEntity;
import org.ssssssss.magicapi.core.model.Options;
import org.ssssssss.magicapi.core.service.MagicAPIService;
import org.ssssssss.magicapi.core.service.MagicResourceService;
import org.ssssssss.magicapi.core.servlet.MagicHttpServletRequest;
import org.ssssssss.magicapi.core.servlet.MagicHttpServletResponse;
import org.ssssssss.magicapi.utils.PathUtils;
import org.ssssssss.magicboot.model.StatusCode;
import org.ssssssss.script.MagicScriptContext;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

import org.ssssssss.magicapi.core.interceptor.AuthorizationInterceptor;

/**
 * 多用户登录
        * 自定义用户名密码登录
 */
@Component  //注入到Spring容器中
public class CustomAuthorizationInterceptor implements AuthorizationInterceptor {

//    @Autowired
//    MagicAPIService magicAPIService;

    @Autowired
    MagicResourceService magicResourceService;

    @Autowired
    private JdbcTemplate template;

    /**
     * 配置是否需要登录
     */
    @Override
    public boolean requireLogin() {
//        return true;
        return false;
    }

    /**
     * 是否拥有页面按钮的权限
     */
    @Override
    public boolean allowVisit(MagicUser magicUser, MagicHttpServletRequest request, Authorization authorization) {
        // Authorization.SAVE 保存
        // Authorization.DELETE 删除
        // Authorization.VIEW 查询
        // Authorization.LOCK 锁定
        // Authorization.UNLOCK 解锁
        // Authorization.DOWNLOAD 导出
        // Authorization.UPLOAD 上传
        // Authorization.PUSH 推送
        return true;
    }

    /**
     * 是否拥有对该接口的增删改权限
     * 此方法可以不重写，则走默认的 boolean allowVisit(MagicUser magicUser, MagicHttpServletRequest request, Authorization authorization) 方法
     */
    @Override
    public boolean allowVisit(MagicUser magicUser, MagicHttpServletRequest request, Authorization authorization, MagicEntity entity) {
        // Authorization.SAVE 保存
        // Authorization.DELETE 删除
        // Authorization.VIEW 查询
        // Authorization.LOCK 锁定
        // Authorization.UNLOCK 解锁
        // 自行写逻辑判断是否拥有如果有，则返回true，反之为false
        return true;
    }

    /**
     * 是否拥有对该分组的增删改权限
     * 此方法可以不重写，则走默认的 boolean allowVisit(MagicUser magicUser, MagicHttpServletRequest request, Authorization authorization) 方法
     */
    @Override
    public boolean allowVisit(MagicUser magicUser, MagicHttpServletRequest request, Authorization authorization, Group group) {
        // Authorization.SAVE 保存
        // Authorization.DELETE 删除
        // Authorization.VIEW 查询
        // 自行写逻辑判断是否拥有如果有，则返回true，反之为false
        return true;
    }
    /**
     * 根据Token获取User
     */
    @Override
    public MagicUser getUserByToken(String token) throws MagicLoginException {
//        String requireLogin = Objects.toString(apiinfo.getOptionValue(Options.REQUIRE_LOGIN), "");
//        if(requireLogin.equals("false")){
            return null;
//        }
//        if(!StpUtil.isLogin(loginId)){
//            return StatusCode.CERTIFICATE_EXPIRED.json();
//        } else {
//            // TODO
//            List<String> permissions = (List<String>) magicAPIService.execute("post", "/system/security/permissions", new HashMap<String, Object>());
//            String permission = Objects.toString(apiinfo.getOptionValue(Options.PERMISSION), "");
//            if (StringUtils.isNotBlank(permission) && !permissions.contains(permission)) {
//                return StatusCode.FORBIDDEN.json();
//            }
//        }
//        if (StpUtil.isLogin(loginId)) {
//            return magicUser;   // 从token中获取MagicUser对象
//        }
//        throw new MagicLoginException("token无效");
    }

    @Override
    public MagicUser login(String username, String password) throws MagicLoginException {
        // 根据实际情况进行修改，如查询数据库。。
        if("admin".equals(username) && "admin".equals(password)){
            // 登录成功后 构造MagicUser对象。
            return new MagicUser("1","admin","tokenvalue......");
        }
        throw new MagicLoginException("用户名或密码不正确");
    }

}