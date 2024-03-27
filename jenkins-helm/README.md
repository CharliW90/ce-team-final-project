# Jenkins CI/CD using Helm

Once kubectl is correctly pointed to our EKS Cluster, we can install Jenkins using helm

Create a namespace for our CI/CD application ```kubectl create namespace cicd```

Install Jenkins ```helm install jenkins jenkins-helm/ -n cicd```

- Port Forward the jenkins deployment to localhost ```kubectl port-forward -n cicd svc/jenkins-service 8080:8080```
- visit [localhost:8080](http://localhost:8080)

- If this is first-time setup then the admin password needs to be retrieved from the logs of the pod that jenkins was installed on
```kubectl logs -n cicd -l app=jenkins-server --tail 25```