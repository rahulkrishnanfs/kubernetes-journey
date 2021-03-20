# FOSSMeet'21 Introduction to Kubernetes 
<br>
<br>

Creating the deployment for the web app
```
kubectl create -f deploy/deployment.yaml
```

Creating service for the web app
```
kubectl create -f deploy/service.yaml
```


Creating Ingress route for the web app
```
kubectl create -f deploy/ingress.yaml
```