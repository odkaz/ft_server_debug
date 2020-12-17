<<<<<<< HEAD
docker build -t ft_server .
docker run -it --name ft_server -p 80:80 -p 443:443 -d ft_server:latest
docker exec -it ft_server bash

then go to localhost
issues:
it does not redirect to https:
I want to access to wordpress, but I can't
=======
#first, create an image
```docker build -t test .```
#then run test
```docker run -p 80:80 test```
issue:mysql does not run😭
>>>>>>> 57b5c13f9b4b04bfeaed868e048fb5bd1c50532c
