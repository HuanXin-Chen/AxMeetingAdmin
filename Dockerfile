FROM node:16-alpine as build

#设置工作目录
WORKDIR/app

#复制package.json和package-lock.json到容器中
COPY package*.json ./

#安装依赖
RUN npm install

#将应用程序代码复制到容器中
COPY . .

#暴露3001端口
EXPOSE 4000

#启动应用程序
CMD["npm","run","serve"]

