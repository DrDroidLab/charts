# charts
```shell
kubectl create namespace drdroid
kubectl create -n drdroid secret generic drdroid-agent-auth-token --from-literal=drdroid-auth-token=<>
kubectl apply -f manifest.yaml -n drdroid
```
