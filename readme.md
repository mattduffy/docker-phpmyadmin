Docker command to run my local dockerized version of PHPMyAdmin is:
```bash
docker run \
	--name pma \
	--net dockermysql_default \
	--link dockermysql_mysql_1:mysql \
	--rm \
	-d \
	-P \
	mattduffy/phpmyadmin
```

The mysql database is dockerized as well, using the compose file in /home/matt/github-local/docker-mysql/docker-compose.yml file.  The mysql data files are mounted from /home/matt/docker-volumes/msyql and can be copied from there if neccessary.  I tried to get docker to use the default network bridge instead of creating a new network during orchestration, but haven't figured that out yet, so compse still creates a new bridge network.

Container name: dockermysql_mysql_1
Docker network name: dockermysql_default 

To run the mysql image, from the location of the compose file, run:
```bash
docker-compose up -d
```

