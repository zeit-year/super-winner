#!/bin/bash
tar xf mongodb-linux-x86_64-4.0.12.tgz 
mv mongodb-linux-x86_64-4.0.12 /usr/local/mongodb
 echo "export PATH=$PATH:/usr/local/mongodb/bin/" > /etc/profile
export PATH=$PATH:/usr/local/mongodb/bin/
 source /etc/profile
mkdir -p /usr/local/mongodb/conf/
rm -rf /usr/local/mongodb/conf/*
mkdir -p /usr/local/mongodb/logs/
mkdir -p /usr/local/mongodb/data/config
mkdir -p /usr/local/mongodb/data/shard1
mkdir -p /usr/local/mongodb/data/shard2
mkdir -p /usr/local/mongodb/data/shard3
touch /usr/local/mongodb/logs/config.log
touch /usr/local/mongodb/logs/mongos.log
touch /usr/local/mongodb/logs/shard1.log
touch /usr/local/mongodb/logs/shard2.log
touch /usr/local/mongodb/logs/shard3.log
touch /usr/local/mongodb/conf/config.conf
touch /usr/local/mongodb/conf/shard1.conf
touch /usr/local/mongodb/conf/shard2.conf
touch /usr/local/mongodb/conf/shard3.conf
touch /usr/local/mongodb/conf/mongos.conf
echo "dbpath=/usr/local/mongodb/data/config
logpath=/usr/local/mongodb/logs/config.log
port=27018
logappend=true
fork=true
maxConns=5000
replSet=configs
configsvr=true
bind_ip=0.0.0.0"  > /usr/local/mongodb/conf/config.conf
mongod -f /usr/local/mongodb/conf/config.conf
echo "dbpath=/usr/local/mongodb/data/shard1		
logpath=/usr/local/mongodb/logs/shard1.log	
port=27001 		
logappend=true
fork=true
maxConns=5000
storageEngine=mmapv1
shardsvr=true
replSet=shard1	
bind_ip=0.0.0.0">> /usr/local/mongodb/conf/shard1.conf
echo "dbpath=/usr/local/mongodb/data/shard2		
logpath=/usr/local/mongodb/logs/shard2.log	
port=27002 		
logappend=true
fork=true
maxConns=5000
storageEngine=mmapv1
shardsvr=true
replSet=shard2	
bind_ip=0.0.0.0">> /usr/local/mongodb/conf/shard2.conf
echo "dbpath=/usr/local/mongodb/data/shard3	
logpath=/usr/local/mongodb/logs/shard3.log	
port=27003 		
logappend=true
fork=true
maxConns=5000
storageEngine=mmapv1
shardsvr=true
replSet=shard3	
bind_ip=0.0.0.0">> /usr/local/mongodb/conf/shard3.conf
mongod -f /usr/local/mongodb/conf/shard1.conf
mongod -f /usr/local/mongodb/conf/shard2.conf
mongod -f /usr/local/mongodb/conf/shard3.conf
 echo "logpath=/usr/local/mongodb/logs/mongos.log
logappend = true
port = 27017
fork = true
configdb = configs/192.168.200.111:27018,192.168.200.112:27018,192.168.200.113:27018
maxConns=20000
bind_ip=0.0.0.0" >> /usr/local/mongodb/conf/mongos.conf
