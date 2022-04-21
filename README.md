# Dev Container For Kubernetes Operators Development

Repository contains a [devcontainer](https://code.visualstudio.com/docs/remote/create-dev-container) which will help you to develop your kubernetes operators using [Visual Studio Code](https://code.visualstudio.com/). It will provide a ready [minikube](https://minikube.sigs.k8s.io/docs/), kubernetes tools, [operator-sdk](https://sdk.operatorframework.io/) and [nginx](https://nginx.org) configured as reverse-proxy to have access to your apps from your localhost.

> Nginx is using port 80 from your localhost, if that port is already taken, change the configuration in `devcontainer.json`

For more info: [https://www.adysof.com](https://www.adysof.com)
