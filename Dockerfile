# 使用官方的 Python 基础镜像
FROM python:3.8

# 在容器中创建一个工作目录
WORKDIR /app

# 在工作目录下创建一个 Python 脚本文件
RUN echo 'print("Hello World")' > hello.py

# 定义容器启动命令
CMD ["python", "hello.py"]
