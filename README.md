# docker-practice
To get familiar with docker

## command

- `docker build -t apacheubuntu2:1.0 . `

- `docker run -t -d -P --name apache2container apacheubuntu2:1.0`

We can override CMD by passing arguments

- `docker run -it testcontainer:latest echo "Docker test"`

- `docker run -it --entrypoint=sleep testcontainer:latest 10`

- `docker-compose up -d`

- `docker container ls // docker ps [-a]`

- `docker image ls // docker images [-a]`

- `docker-compose down`

docker volume used to share data between containers.

mounting /usr/share/nginx/html with nginxvol

- `docker run -t -d -P --name nginx-nick -v nginxvol:/usr/share/nginx/html nginx:latest`

copy file in local machine to shared volume of container.

- `docker cp index.html nginx-nick:/usr/share/nginx/html`

docker bind mount used to share data with host machine and container.

A file or directory on host machine is mounted into a container. 

- `docker run -t -d -P -v /opt/nginx/html:/usr/share/nginx/html --name nginx01 nginx:latest`


---


Setting up Hadoop Cluster using Docker

[https://github.com/big-data-europe/docker-hadoop](https://github.com/big-data-europe/docker-hadoop)

- `git clone https://github.com/mayujie/docker-practice.git`

- `docker-compose up -d` with yaml file

- `docker ps`

- `docker exec -it namenode /bin/bash`

- `hdfs dfs -ls /`

- `hdfs dfs -mkdir -p /user/root`

Download example jar file to test MapReduce job

- `wget ....jar`

transfer jar file inside the namenode container

- `docker cp hadoop-mapreduce-example-2.7.1-sources.jar namenode:/tmp`

create example file and upload to HDFS location

- `hdfs dfs -mkdir /user/root/input`

- `hdfs dfs -put input1.txt /user/root/input`

- `hadoop jar ....jar org.apache.hadoop.example.WordCount input output`

- `docker-compose down`

- `beeline hive`

# References:
[configuring-docker-for-use-with-github-packages](https://docs.github.com/en/packages/guides/configuring-docker-for-use-with-github-packages)

[pushing-and-pulling-docker-images](https://docs.github.com/en/packages/guides/pushing-and-pulling-docker-images)

[configuring-access-control-and-visibility-for-container-images](https://docs.github.com/en/packages/guides/configuring-access-control-and-visibility-for-container-images)

[configuring-docker-for-use-with-github-packages](https://docs.github.com/en/packages/guides/configuring-docker-for-use-with-github-packages)
