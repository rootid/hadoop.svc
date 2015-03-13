#!/usr/bin/sh
#To start hadoop cluster
#/usr/local/hadoop/bin/start-all.sh

input_path=${1}
hdfs_path=${2}
hadoop dfs -copyFromLocal ${input_path} ${hdfs_path}

hadoop jar ~/jars/preprocess.jar /user/test /user/op

#To stop the hadoop cluster
#/usr/local/hadoop/bin/stop-all.sh
