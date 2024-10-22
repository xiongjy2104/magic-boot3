package org.ssssssss.magicboot.configuration;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;
import org.ssssssss.magicapi.core.config.MagicPluginConfiguration;

@NacosConfigurationProperties(dataId = "my-nacos-config", autoRefreshed = true)
public class NacosConfiguration  {

    private String config1;

    private String config2;

    public String getConfig1() {
        return config1;
    }

    public void setConfig1(String config1) {
        this.config1 = config1;
    }

    public String getConfig2() {
        return config2;
    }

    public void setConfig2(String config2) {
        this.config2 = config2;
    }
}
