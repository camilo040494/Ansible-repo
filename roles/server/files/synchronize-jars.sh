for i in `cat ${HADOOP_COMMON_HOME}/etc/hadoop/slaves`; do echo $i; sudo -u ec2-user rsync -avxP --exclude=logs $HOME/*.jar $i:/home/ec2-user/;
done
