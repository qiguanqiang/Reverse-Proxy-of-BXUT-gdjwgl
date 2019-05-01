# Reverse-Proxy-of-BJUT-gdjwgl
The base service of BJUTservice of @YahuiAn

# 简介
   
    此项目使用Nginx作为反向代理服务器，通过搭建VPN和重定向路由在外网代理出北工大校园内网的教务管理系统，让流量经过外网访问工大教务管理系统。

# 原理

## Nginx反向代理
  通过修改Nginx配置文件，可以把Nginx当做反向代理服务器来使用，让流量在外网-反向代理服务器-北工大校内网之间形成通路。所谓反向代理就是让一台服务器（称为反向代理服务器）转发被代理服务器的流量，让流量访问反向代理服务器就可以实现访问被代理服务器的效果。

## VPN
	VPN是为实现反向代理功能提供条件，因为反向代理服务器在校外网，被代理服务器在校内网，故需要搭建VPN使之能让反向代理服务器访问校内网。

## 运维相关
### 日志分割
