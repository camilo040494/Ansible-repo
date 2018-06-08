# With this repository you may achieve two things, building an imagen with Hadoop and Java installed (ami_creation) and configuring a Hadoop cluster ready for running.

## The ami_creation folder contains a robot that sets up the Java environment with Hadoop installed, once this is built, you may save the ami image and use it when as the image for the cluster (as the required artifacts to setting up the cluster are installed in that ami). This is installed on a amazon linux ami OS.

For running any of the amazon prividors, use:
```
ansible-playbook -i inventory/hosts aws_ec2.yml
```
Or use the -vvv flag for seeing the out logs.
```
ansible-playbook -i inventory/hosts aws_ec2.yml -vvv
```
