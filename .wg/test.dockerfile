from ubuntu
## init lua-nginx-module  test/dev env from pure ubuntu image
## you could volume you forked lua-nginx-module into this docker and run sth like actions/test.sh
## notice that
## 1. this docker WILL NOT focus on performance or image size, but focus on readble and human engiee.
## 2. you should easily transport this docker file into sh script or manualy copy paste from this dockerfile


ENV LUA_NGINX_MODULE=https://github.com/openresty/lua-nginx-module
## use this if you are been fucked like me.
ENV LUA_NGINX_MODULE=https://gitclone.com/github.com/openresty/lua-nginx-module
RUN echo "ok"
RUN apt udpate 

RUN apt install git neovim bash curl
RUN git clone $LUA_NGINX_MODULE 
