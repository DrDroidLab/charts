# charts

```shell
kubectl create namespace drdroid
kubectl create -n drdroid secret generic drdroid-agent-auth-token --from-literal=drdroid-auth-token=<>
kubectl create -n drdroid secret generic drdroid-aws-secrets --from-literal=access-key-id=<> --from-literal=secret-access-key=<>
```

### Add drdroid agent helm release
```shell
helm repo add drdroid https://drdroidlab.github.io/charts
helm repo update
helm install drdroid-agent --namespace drdroid drdroid/drdroid-agent
```

### Remove drdroid agent helm release
```shell
helm uninstall drdroid-agent --namespace drdroid
```

## Run docker container directly:

```shell
 docker run -p 5121:5121 -e DRDROID_AUTH_TOKEN=<> -e DRDROID_HOSTNAME=<> public.ecr.aws/y9s1f3r5/drdroid/agent  collector --configScheme=default
```

# How to release new charts

1. Run publish_chart.sh script with version of agent as argument
    ```shell
    ./publish_chart.sh 0.1.0
    ```
2. Create PR in the repo with the new package.
3. Merge the PR
4. Updated github pages will be deployed

