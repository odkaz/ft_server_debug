docker build -t ft_server .
docker run -it --name ft_server -p 80:80 -p 443:443 -d ft_server:latest
docker exec -it ft_server bash

then go to localhost
issues:
it does not redirect to https:
I want to access to wordpress, but I can't
