# Deploy Jenkins with an Nginx Reverse Proxy on Azure Web App Service

## Usage

### Bash Shell

Execute the "deploy-jenkins.sh" script at a command line. The available parameters are:

* -r or --resourcegroup (Default 'myresourcegroup'): Name of the Resource Group to be created.
* -l or --location (Default 'westus'): Location for all resources to be created.
* -s or --storageaccount (Default 'mystorageaccount'): Name of the Storage Account to be created. This must
  be a globally unique name.
* -f or --fileshare (Default 'myfileshare'): Name of the File Share to be created.
* -p or --appserviceplan (Default 'myappserviceplan'): Name of the App Service Plan to be created.
* -c or --cazurecontainerregistry (Default 'myazurecontainerregistry'): Name of the Azure Container Registry
  to be created. This must be a globally unique name.
* -w or --webapp (Default 'mywebapp'): Name of the Web App Service to be created. This must be a globally
  unique name.

```
.\deploy-jenkins.sh --azurecontainerregistry myacr0192837465 --webapp mywebapp-0192837465
```

### Windows PowerShell

Execute the "deploy-jenkins.ps1" script in Powershell. The available parameters are:

* -resourcegroup (Default 'myresourcegroup'): Name of the Resource Group to be created.
* -location (Default 'westus'): Location for all resources to be created.
* -storageaccount (Default 'mystorageaccount'): Name of the Storage Account to be created. This must
  be a globally unique name.
* -fileshare (Default 'myfileshare'): Name of the File Share to be created.
* -appserviceplan (Default 'myappserviceplan'): Name of the App Service Plan to be created.
* -azurecontainerregistry (Default 'myazurecontainerregistry'): Name of the Azure Container Registry
  to be created. This must be a globally unique name.
* -webapp (Default 'mywebapp'): Name of the Web App Service to be created. This must be a globally
  unique name.

```
.\deploy-jenkins.ps1 -azurecontainerregistry myacr0192837465 -webapp mywebapp-0192837465
```

## Accessing Logs

When Jenkins initializes, it will generate a random administrator password and output it to the log
file. You will need this password to access Jenkins for the first time.

You can retrieve the log files from Azure by entering this command (Bash or PowerShell), substituting
your resource group name and web app service name instead of "myresourcegroup" and "mywebapp":

```
az webapp log download --resource-group myresourcegroup --name mywebapp
```
