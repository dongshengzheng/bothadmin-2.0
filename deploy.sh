#!/usr/bin/env bash#!/usr/bin/env bash
# 关闭tomcat
# 删除代码
# 切换到workspace目录， 执行
# move .war文件
# 执行liquibase
# 解压
# 删除 .war
# cp .properties
# 启动Tomcat

#!/usr/bin/env bash

## 拉去代码

## tomcat 目录 /root/apache-tomcat-6.0.45/

# 关闭tomcat
ps -ef |grep tomcat |grep -v grep |awk '{print $2}'|xargs kill 9
# 删除ROOT 代码
rm -rf /root/apache-tomcat-6.0.45/webapps/bothadmin/ROOT
git pull origin master
mvn clean install
cd /root/apache-tomcat-6.0.45/webapps/bothadmin
cp ~/Workspace/bothadmin/target/bothadmin.war  .
unzip bothadmin.war -d ROOT
rm bothadmin.war
cp /root/Workspace/override/boxi.properties /root/apache-tomcat-6.0.45/webapps/boxi/ROOT/WEB-INF/classes/jeeplus.properties
sh /root/apache-tomcat-6.0.45/bin/startup.sh


