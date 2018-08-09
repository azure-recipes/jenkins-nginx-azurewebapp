# Deploy Jenkins with an Nginx Reverse Proxy on Azure Web App Service

## Usage (Windows PowerShell)

Execute the "deploy-jenkins.ps1" script in Powershell. The available parameters are:

* resourcegroup (Default 'myresourcegroup'): Name of the Resource Group to be created.
* location (Default 'westus'): Location for all resources to be created.
* appserviceplan (Default 'myappserviceplan'): Name of the App Service Plan to be created.
* azurecontainerregistry (Default 'myazurecontainerregistry'): Name of the Azure Container Registry
  to be created. This must be a globally unique name.
* webapp (Default 'mywebapp'): Name of the Web App Service to be created. This must be a globally
  unique name.

```
.\deploy-jenkins.ps1 -azurecontainerregistry myacr0192837465 -webapp mywebapp-0192837465
```

## Usage (Bash Shell)

Execute the "deploy-jenkins.sh" script at a command line. The available parameters are:

* -r or --resourcegroup (Default 'myresourcegroup'): Name of the Resource Group to be created.
* -l or --location (Default 'westus'): Location for all resources to be created.
* -s or --appserviceplan (Default 'myappserviceplan'): Name of the App Service Plan to be created.
* -c or --cazurecontainerregistry (Default 'myazurecontainerregistry'): Name of the Azure Container Registry
  to be created. This must be a globally unique name.
* -w or --webapp (Default 'mywebapp'): Name of the Web App Service to be created. This must be a globally
  unique name.

```
.\deploy-jenkins.sh --azurecontainerregistry myacr0192837465 --webapp mywebapp-0192837465
```
