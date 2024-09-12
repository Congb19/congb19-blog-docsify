# 使用Nginx官方镜像作为基础镜像
FROM nginx:alpine

# 将前端项目构建的静态文件复制到Nginx的默认目录
COPY ./docs /usr/share/nginx/html

# 复制自定义的Nginx配置文件（可选）
# COPY ./nginx.conf /etc/nginx/nginx.conf

# 暴露80端口
EXPOSE 80

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]
