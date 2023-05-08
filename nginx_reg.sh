#!/bin/bash
#将四个文件复制到/usr/local/nginx/html目录下后执行nginx_reg.sh脚本
alias cp=cp
mkdir /usr/local/nginx/html/{images,documents}
echo "/usr/local/nginx/html/images/index.html" >/usr/local/nginx/html/images/index.html
cp /usr/local/nginx/html/linux.png   /usr/local/nginx/html/images/
echo "/usr/local/nginx/html/documents/index.html" >/usr/local/nginx/html/documents/index.html
mkdir /usr/local/nginx/html/documents/abc
echo "/usr/local/nginx/html/documents/abc/index.html" >/usr/local/nginx/html/documents/abc/index.html
mkdir /usr/local/nginx/html/images/abc
echo "/usr/local/nginx/html/images/abc/index.html" >/usr/local/nginx/html/images/abc/index.html
cp /usr/local/nginx/html/linux.png   /usr/local/nginx/html/images/abc/
mkdir /usr/local/nginx/html/downloads/
echo /usr/local/nginx/html/downloads/index.html > /usr/local/nginx/html/downloads/index.html

mkdir -p /benet/{images,documents}
echo "/benet/images/index.html" >/benet/images/index.html
cp /usr/local/nginx/html/linux.png /benet/images/
echo "/benet/documents/index.html">/benet/documents/index.html
mkdir /benet/images/abc
echo "/benet/images/abc/index.html" >/benet/images/abc/index.html
cp /usr/local/nginx/html/linux.png  /benet/images/abc/
mkdir /benet/documents/abc
echo "/benet/documents/abc/index.html" >/benet/documents/abc/index.html
mkdir -p /accp/{images,documents}
echo "/accp/images/index.html" >/accp/images/index.html
cp /usr/local/nginx/html/error.jpg /accp/images/
cp /usr/local/nginx/html/error.jpg /accp/images/Error.Jpg
echo "/accp/documents/index.html">/accp/documents/index.html
mkdir /accp/images/abc
echo "/accp/images/abc/index.html" >/accp/images/abc/index.html
cp /usr/local/nginx/html/error.jpg  /accp/images/abc/
mkdir /accp/documents/abc
echo "/accp/documents/abc/index.html" >/accp/documents/abc/index.html
cp nginx.conf  /usr/local/nginx/conf/

tree /usr/local/nginx/html   /benet   /accp


