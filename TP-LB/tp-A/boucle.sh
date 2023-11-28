count_server1=0
count_server2=0

for i in {1..500}; do
    response=$(curl -s localhost:83)
    if [[ $response == *"Hello 1"* ]]; then
        ((count_server1++))
    elif [[ $response == *"Hello 2"* ]]; then
        ((count_server2++))
    fi
done

echo "Réponses du serveur 1 : $count_server1"
echo "Réponses du serveur 2 : $count_server2"

