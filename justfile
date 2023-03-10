set dotenv-load

image := "ghcr.io/jswank/ops:latest"

# build a new image
build:
  docker build -t {{image}} -f Dockerfile ./ctx 

# publish the image
publish: 
  @ echo $GH_PAT | docker login ghcr.io -u jswank --password-stdin >/dev/null 2>&1
  docker push {{image}}
  @ docker logout ghcr.io

clean:
  docker rmi {{image}}
