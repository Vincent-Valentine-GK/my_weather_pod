# Various Intructions



## kubectl

## helm

### Traditional way
```
helm upgrade [name-of-app]-release --install --wait --cleanup-on-fail --history-max 1
```

```
helm upgrade [name-of-app]-release -f [folder of app]/values.yml --install --wait --cleanup-on-fail --history-max 1
```
