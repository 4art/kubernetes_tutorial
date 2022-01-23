#/bin/bash
echo "starting minikube"
minikube start --driver docker
kubectl get node

echo "applying yaml files"
kubectl apply -f mongo-config.yaml
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml

echo "checking how the pods working"
kubectl get all

echo "running in a browser"
minikube service webapp-service
