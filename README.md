# 1. Launch the server.
```
git clone https://github.com/raijp/nginx-rust.git && cd nginx-rust

docker build -t rust:v1 .

docker rm -f rust-server

docker run -it -d \
  -p 8090:80 \
  --mount type=bind,source=$(pwd)/var/src/app,target=/var/src/app \
  --name rust-server rust:v1

docker exec -t rust-server rustc http_server.rs

docker exec -t rust-server ./http_server
```

# 2. Request to 127.0.0.1:8090 form another terminal.
```
curl 127.0.0.1:8090
```
Also you can see 127.0.0.1:8090 on your using a browser.
