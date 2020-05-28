# mysql5.7-dockerfile


###简介
  该docker镜像使用的是mysql5.7，并且镜像中集成了了percona-xtrabackup，mydumper，vim等工具



###Installtion  

1.生成镜像
 ```
   docker build -t mysql:5.7 .
 ```

 2.实例化容器

 ```
docker run -itd --name mysql5.7 -e MYSQL_ROOT_PASSWORD containerId

 ```
