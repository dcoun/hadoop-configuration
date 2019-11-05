#!/bin/bash
sh ${LIVY_PREFIX}/bin/livy-server stop

sh ${SPARK_PREFIX}/sbin/stop-all.sh

sh ${HBASE_PREFIX}/bin/stop-hbase.sh

sh ${HADOOP_PREFIX}/sbin/stop-yarn.sh
sh ${HADOOP_PREFIX}/sbin/stop-dfs.sh
sh ${HADOOP_PREFIX}/sbin/mr-jobhistory-daemon.sh --config ${HADOOP_PREFIX}/etc/hadoop stop historyserver

sh ${ZOOKEEPER_PREFIX}/bin/zkServer.sh stop