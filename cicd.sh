set -x

docker save kube-sample-apiserver:2.0 -o ext-server.tar

scp ext-server.tar mzone:~

ssh mzone scp ext-server.tar root@10.3.32.157:~
ssh mzone scp ext-server.tar root@10.3.32.158:~
ssh mzone scp ext-server.tar root@10.3.32.159:~

ssh mzone ssh root@10.3.32.157 docker load -i ext-server.tar
ssh mzone ssh root@10.3.32.158 docker load -i ext-server.tar
ssh mzone ssh root@10.3.32.159 docker load -i ext-server.tar
