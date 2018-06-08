#!/bin/bash
mkdir -p ~/AppLogs/Yarn/
exec 3>&1 1>~/AppLogs/noEketalOut.txt
for i in `seq 1 10`;
do
	echo process$i
	hadoop jar wordcount-hadoop-1.0-SNAPSHOT.jar less out$i
done
exec 1>&3 3>&-;

exec 3>&1 1>>~/AppLogs/myfile.txt
for i in `cat $HADOOP_COMMON_HOME/etc/hadoop/slaves`;
do
 echo $i;
 rsync -avxP $i:$HADOOP_COMMON_HOME/logs/yarn* ~/AppLogs/Yarn/;
done
exec 1>&3 3>&-;

hdfs dfs -rm -R out*
exec 3>&1 1>>~/AppLogs/noEketalOut.txt
for i in `seq 11 20`;
do
        echo process$i
        hadoop jar wordcount-hadoop-1.0-SNAPSHOT.jar less out$i
done
exec 1>&3 3>&-;

exec 3>&1 1>>~/AppLogs/myfile.txt
for i in `cat $HADOOP_COMMON_HOME/etc/hadoop/slaves`;
do
 echo $i;
 rsync -avxP $i:$HADOOP_COMMON_HOME/logs/yarn* ~/AppLogs/Yarn/;
done
exec 1>&3 3>&-;

hdfs dfs -rm -R out*
