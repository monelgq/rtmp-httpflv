# rtmp-httpflv
rtmp-httpflv是直播服务器  [livego](https://github.com/gwuhaolin/livego) 的docker镜像

创建docker运行容器：

docker run -d -p 1935:1935 -p 7001:7001 -p 7002:7002 --name myliveserver monelgq/rtmp-httpflv

1935端口是RTMP协议直播流服务的默认端口
7001端口是HTTP-FLV协议直播流服务的默认端口
7002端口是HTTP-HLS协议直播服务的默认端口

假设直播服务器域名为 mylivehost 直播推流的流名称是 mystream ，则以上三个端口的访问网址分别如下：

RTMP直播和推流地址:   rtmp://mylivehost:1935/live/mystream
HTTP-FLV直播地址:     http://mylivehost:7001/live/mystream.flv
HTTP-FLV直播地址:     http://mylivehost:7002/live/mystream.m3u8

