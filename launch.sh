docker network create mailnet
docker run -d --network=mailnet --name fetchmail fetchmail

