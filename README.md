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
helm upgrade [name-of-app]-release -f [folder of app]/values.yml --install --wait --cleanup-on-fail --history-max 1
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

