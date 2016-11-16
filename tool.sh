#!/bin/sh

mvn clean package -DskipTests=true  -Dmaven.javadoc.skip=true

rm -rf /Users/ouyangzhe/workspace/apache-flume-1.7.0-bin/plugins.d/odps_sink
cp -r ~/workspace/aliyun-odps-flume-plugin/target/odps_sink /Users/ouyangzhe/workspace/apache-flume-1.7.0-bin/plugins.d/
