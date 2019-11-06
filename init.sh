# OSX 에서는 안됨;

# sudo visudo
# %hadoop ALL=(ALL) NOPASSWD: ALL

hdfs namenode -format

sudo addgroup hadoop
sudo adduser --ingroup hadoop hadoop
sudo adduser --ingroup hadoop hdfs

sudo -u hdfs hdfs dfs -mkdir -p /user/${USER}
sudo -u hdfs hdfs dfs -chown ${USER}:${USER} /user/${USER}

sudo -u hdfs hdfs dfs -mkdir -p /user/yarn
sudo -u hdfs hdfs dfs -chmod 777 /user/yarn

sudo -u hdfs hadoop fs -mkdir /tmp/remote-app-logs
sudo -u hdfs hadoop fs -chown mapred:hadoop /tmp/remote-app-logs
sudo -u hdfs hadoop fs -chmod 777 /tmp/remote-app-logs

sudo -u hdfs hdfs dfs -mkdir /user/livy
sudo -u hdfs hdfs dfs -chown livy:livy /user/livy