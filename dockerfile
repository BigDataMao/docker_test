# 使用官方的 Ubuntu 基础镜像
FROM ubuntu:latest

# 更新包列表并安装 Python
RUN apt-get update && \
    apt-get install -y python3

# 设置工作目录
WORKDIR /app

# 创建一个简单的 HTTP 服务器脚本
RUN echo 'import http.server; import socketserver; PORT = 8000; Handler = http.server.SimpleHTTPRequestHandler; httpd = socketserver.TCPServer(("", PORT), Handler); print("serving at port", PORT); httpd.serve_forever()' > server.py

# 暴露端口
EXPOSE 8000

# 定义容器启动时要运行的命令
CMD ["python3", "server.py"]
