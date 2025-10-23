helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack --version 78.4.0 -n monitoring --create-namespace
helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd --version 9.0.3 -n argocd --create-namespace
nohup kubectl port-forward service/argocd-server -n argocd 8080:443 &
#password: GVKMb04eCCYQuXJ4