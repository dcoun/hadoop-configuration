#!/bin/bash
sh ${ZOOKEEPER_PREFIX}/bin/zkServer.sh start

sh ${HADOOP_PREFIX}/sbin/start-dfs.sh
sh ${HADOOP_PREFIX}/sbin/start-yarn.sh

sh ${HADOOP_PREFIX}/sbin/mr-jobhistory-daemon.sh --config ${HADOOP_PREFIX}/etc/hadoop start historyserver

sh ${HBASE_PREFIX}/bin/start-hbase.sh

sh ${SPARK_PREFIX}/sbin/start-all.sh

sh ${LIVY_PREFIX}/bin/livy-server start