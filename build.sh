export GO111MODULE=on
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o artifacts/simple-image/kube-sample-apiserver
docker build -t kube-sample-apiserver:3.0 ./artifacts/simple-image
