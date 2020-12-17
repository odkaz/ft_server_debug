docker build -t ft_server .
docker run -it --name ft_server -p 80:80 -p 443:443 -d ft_server:latest
docker exec -it ft_server bash
