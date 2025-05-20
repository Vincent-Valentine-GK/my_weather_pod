# Various Intructions


## Helm

#### Create a helm template
```
helm create [name of package]-pkg
```

### Traditional way (Don't need to specigy values, it does it automatically)


```
helm upgrade [name-of-app]-release --install --wait --cleanup-on-fail --history-max 1
```

### Traditianl with values specified.
```
helm upgrade [name-of-app]-release --values [name-of-app]-release/values.yaml --install --wait --cleanup-on-fail --history-max 1
```


```
helm upgrade my-weather-release my-weather-pod-pkg --set-literal imageName="localhost/my_weather" --set-literal imageTag=0.0.2 --install --wait --cleanup-on-fail --history-max 1
```


### Check helm deployments
```
helm list
```


### Uninstall helm release
```
helm uninstall [Release name]
```


### Check resources
```
kubectl get all
```

# Docker
```
podman build -t my_weather:0.0.1 .
```