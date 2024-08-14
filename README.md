# custom-nginx-port

Here we are exposing nginx image to port 8080. You can choose your own port.

```
docker build -t my-nginx . 
docker run -p80:80 -p1972:1972 -p2188:2188 -d my-nginx
docker run -d -p 8080:8080 my-nginx
curl localhost:80
curl localhost:1972
curl localhost:2188
```


