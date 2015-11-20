#/bin/bash
latest (){
  docker pull chamunks/lilypad-proxy:1.7.10
}
stop_container (){
  docker stop lilypad-proxy
}
delete_container (){
  docker rm -f lilypad-proxy
}
run (){
  docker run -ti \
    -p 25565:25565 \
    -v /root/Lilypad-Proxy/proxy/proxy.yml:/app/proxy.yml \
    --restart=always \
    --name=lilypad-proxy \
    chamunks/lilypad-proxy:1.7.10
}

case $1 in
  up )
  echo "make sure to use CTRL+A then CTRL+B to exit the console"
  run
    ;;
  stop )
    stop_container
    ;;
  rm )
    delete_container
    ;;
  pull )
    latest
    ;;
  attach )
    docker attach lilypad-proxy
    ;;
  upgrade )
    latest
    rm
    up
    ;;
  * )
  echo "Your options for this script are: up, stop, rm, pull, attach, upgrade."
    ;;
esac
