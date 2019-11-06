sudo -u hdfs hdfs dfs -mkdir -p /user/${USER}
sudo -u hdfs hdfs dfs -chown ${USER}:${USER} /user/${USER}

sudo -u hdfs hadoop fs -mkdir /tmp/remote-app-logs
sudo -u hdfs hadoop fs -chown mapred:hadoop /tmp/remote-app-logs
sudo -u hdfs hadoop fs -chmod 777 /tmp/remote-app-logs

sudo -u hdfs hdfs dfs -mkdir /user/livy
sudo -u hdfs hdfs dfs -chown livy:livy /user/livy