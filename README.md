# charts

```shell
kubectl create namespace drdroid
kubectl create -n drdroid secret generic drdroid-agent-auth-token --from-literal=drdroid-auth-token=<>
```

```shell
helm repo add drdroid https://drdroidlab.github.io/charts
helm install drdroid-agent --namespace drdroid drdroid/drdroid-agent
```


# How to release new charts

1. Run publish_chart.sh script with version of agent as argument
    ```shell
    ./publish_chart.sh 0.1.0
    ```
2. Create PR in the repo with the new package.
3. Merge the PR
4. Updated github pages will be deployed

