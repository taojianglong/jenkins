FROM ubuntu:16.04
MAINTAINER taojianglong<1768265461@qq.com>
LABEL Description="add golang from ubuntu:16.04" Version="1.0"
RUN su
#安装需要的依赖
RUN apt-get update
RUN apt-get install -y golang-go
#在容器内创建文件夹
RUN mkdir /app
# 将宿主项目目录(也是当前目录)下所有文件
# 复制到镜像中的项目目录
ADD . /app
#工作路径
WORKDIR /app
# 执行web-server
CMD ["/app/web-server"]
