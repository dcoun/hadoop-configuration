export JAVA_HOME="/Library/Java/JavaVirtualMachines/latest/Contents/Home"
export SBT_HOME="/Library/Sbt/latest"
export M2_HOME="/Library/Maven/latest"

export PATH="$JAVA_HOME/bin:$SBT_HOME/bin:$M2_HOME/bin::$PATH"

# Hadoop Prefix
export HADOOP_PREFIX=/Library/Hadoop/hadoop
export HBASE_PREFIX=/Library/Hadoop/hbase
export SPARK_PREFIX=/Library/Hadoop/spark
export ZOOKEEPER_PREFIX=/Library/Hadoop/zookeeper
export LIVY_PREFIX=/Library/Hadoop/livy

# Hadoop data dir
export HADOOP_TMP_PREFIX=/Users/Shared/hadoop

# Hadoop bin and sbin directory to PATH
export HADOOP_HOME=$HADOOP_PREFIX
export HADOOP_MAPRED_HOME=$HADOOP_PREFIX
export HADOOP_COMMON_HOME=$HADOOP_PREFIX
export HADOOP_HDFS_HOME=$HADOOP_PREFIX
export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
export HADOOP_HEAPSIZE=2000
export HADOOP_NAMENODE_INIT_HEAPSIZE=2000
export HADOOP_JOB_HISTORYSERVER_HEAPSIZE=1000
export HADOOP_MAPRED_ROOT_LOGGER=INFO,RFA
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_PREFIX/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib/native"
export HADOOP_CLASSPATH=$HADOOP_PREFIX/etc/hadoop
export CLASSPATH=$CLASSPATH:$HADOOP_PREFIX/lib/*:.

export HADOOP_LOG_DIR=$HADOOP_TMP_PREFIX/logs/hadoop
export HADOOP_PID_DIR=$HADOOP_TMP_PREFIX/pids/hadoop
export HADOOP_MAPRED_LOG_DIR=$HADOOP_TMP_PREFIX/logs/mapred
export HADOOP_MAPRED_PID_DIR=$HADOOP_TMP_PREFIX/pids/mapred

# yarn
export YARN_HOME=$HADOOP_PREFIX
export YARN_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
export YARN_OPTS="$HADOOP_OPTS -Xmx3221225472 -Djava.net.preferIPv4Stack=true $YARN_OPTS"

# hbase
export HBASE_LOG_DIR=$HADOOP_TMP_PREFIX/logs/hbase
export HBASE_PID_DIR=$HADOOP_TMP_PREFIX/pids/hbase
export HBASE_MANAGES_ZK=false

# spark
export SPARK_MASTER_HOST=127.0.0.1
export SPARK_MASTER_IP=127.0.0.1
export SPARK_LOCAL_DIRS=$HADOOP_TMP_PREFIX/spark
export SPARK_LOG_DIR=$HADOOP_TMP_PREFIX/logs/spark
export SPARK_PID_DIR=$HADOOP_TMP_PREFIX/pids/spark

# zk
export ZOO_DATA_DIR=$HADOOP_TMP_PREFIX/zk
export ZOO_LOG_DIR=$HADOOP_TMP_PREFIX/logs/zk

# livy
export SPARK_HOME=$SPARK_PREFIX
export SPARK_CONF_DIR=$SPARK_PREFIX/conf
export LIVY_LOG_DIR=/Users/Shared/hadoop/logs/livy
export LIVY_PID_DIR=/Users/Shared/hadoop/pids/livy

export PATH="$HADOOP_PREFIX/bin:$HBASE_PREFIX/bin:$SPARK_PREFIX/bin:$ZOOKEEPER_PREFIX/bin:$LIVY_PREFIX/bin::$PATH"