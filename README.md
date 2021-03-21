#  Introduction to Kubernetes 
<br>

Install Minikube https://minikube.sigs.k8s.io/docs/start/

Building docker image

1. creating docker image
```
docker build -t  rahulkrishnanfs/fossmeet21:v1 .
```

2. Push the docker images to Docker Hub
```
docker push rahulkrishnanfs/fossmeet21:v1
```

Deployment of web app into kubernetes

1. Creating the deployment for the web app
```
kubectl create -f deploy/deployment.yaml
```

2. Creating service for the web app
```

kubectl create -f deploy/service.yaml

```
3. Creating Ingress route for the web app
```
kubectl create -f deploy/ingress.yaml
```

4. You can use the following command to inspect the history of your Deployment
```
kubectl rollout history deployment/web

```

5. make changes to the source code and build the docker image with new version tag [follow step 1 and 2 in the Building docker image section]

6. push the image to the docker hub

7. Make changes to the deployment yaml file with the updated version

8. Rolling update the changes
```
kubectl replace -f deployment.yaml --record
```

9. Check the history 
 ```
 kubectl rollout history deployment/web

 ```
11. Check testapp.info in the  browser (add testapp.info to the /etc/hosts file)

12. Rollback the changes 
```
kubectl rollout undo deployment/app --to-revision=1
```
13. Check testapp.info in the browser 


