docker run --rm -d \
	-v vol-sql-demo:/var/lib/mysql \
	--name tp4-sql \
	--env MYSQL_ROOT_PASSWORD=foo \
	--network net-tp4 \
	mysql

