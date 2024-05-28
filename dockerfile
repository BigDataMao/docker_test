# 使用官方的 Ubuntu 基础镜像
FROM ubuntu:latest

# 更新包列表并安装基本工具
RUN apt-get update && \
    apt-get install -y curl

# 定义一个简单的命令，用于容器启动时的输出
CMD ["echo", "Hello, Zeabur!"]
