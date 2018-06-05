#!/bin/bash
hdfs dfsadmin -safemode leave && hadoop fs -mkdir -p /user/ec2-user/less && hadoop fs -put *.txt less

