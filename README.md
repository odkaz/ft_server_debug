#first, create an image
docker build -t test .
#then run test
docker run -p 80:80 test

docker build -t ft_server .
docker run -it --name ft_server -p 80:80 -p 443:443 -d ft_server:latest
docker exec -it ft_server bash
