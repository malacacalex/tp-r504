./purge.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 1, erreur=$?"
	exit 1;
fi

./create_network.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 2, erreur=$?"
	exit 1;
fi

./run_mysql.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 3, erreur=$?"
	exit 1;
fi

./filldb.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 4, erreur=$?"
	exit 1;
fi

./build_image.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 5, erreur=$?"
	exit 1;
fi

./run-app.sh
if [ $? != 0 ]; 
then 
	echo "erreur à l'étape 6, erreur=$?"
	exit 1;
fi

