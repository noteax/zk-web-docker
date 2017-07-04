# zk-web-docker
This is the dockerized [zk-web](https://github.com/noteax/zk-web)application - web ui for Zookeeper. 

# Supported tags and respective `Dockerfile` links

* `1.1.0`, `latest` [(1.3.1/Dockerfile)](https://github.com/noteax/zk-web-docker/blob/master/1.1.0/Dockerfile)

# What is zk-web?

zk-web is a Web UI of Zookeeper, just making it easier to use. Sometimes I really get tired of the command line. zk-web is written in clojure with noir and boostrap. Currently there're just less than 450 lines clojure code at all. Clojure is really so simple and so elegent!

# How to use this image

There is no dependencies for image, just run as is.

Configuration parameters are:
 - PORT=8080
 - USER=admin:hello
 - DEFAULT_NODE=localhost:2181/default-node
 
