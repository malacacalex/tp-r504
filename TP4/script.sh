./purge.sh
if [ $? != 0]; 
then 
	echo "erreur à l'étape 1, erreur=$?"
	exit 1;
fi