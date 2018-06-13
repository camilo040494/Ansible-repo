#!/bin/bash
rm -R $HADOOP_COMMON_HOME/logs && sudo rm -R /tmp/* && rm -R ~/hdfs
for i in `cat $HADOOP_COMMON_HOME/etc/hadoop/slaves`;
do
 echo $i;
 ssh $i 'rm -R $HADOOP_COMMON_HOME/logs && sudo rm -R /tmp/*';
done
