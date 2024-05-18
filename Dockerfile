# 使用官方 Python 镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 将当前目录下的文件复制到工作目录
COPY . .

# 安装依赖
# RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install --no-cache-dir -r requirements.txt

# 暴露端口
EXPOSE 5321

# 启动应用
CMD ["python", "app.py"]
