param(
    [string] $resourcegroup = 'myresourcegroup',
    [string] $location = 'westus',
    [string] $appserviceplan = 'myappserviceplan',
    [string] $azurecontainerregistry = 'myazurecontainerregistry',
    [string] $webapp = 'mywebapp'
)

az group create --location $location --name $resourcegroup
az appservice plan create --resource-group $resourcegroup --location $location --is-linux --name $appserviceplan
az acr create --resource-group $resourcegroup --admin-enabled --sku Basic --name $azurecontainerregistry
$acrpassword = (az acr credential show --name $azurecontainerregistry --query passwords[0].value)
az webapp create --resource-group $resourcegroup --plan $appserviceplan --multicontainer-config-type "compose" --multicontainer-config-file docker-compose.yml --name $webapp
az webapp config container set --resource-group $resourcegroup --name $webapp --docker-registry-server-url https://$azurecontainerregistry.azurecr.io --docker-registry-server-user $azurecontainerregistry --docker-registry-server-password $acrpassword
az webapp update --resource-group $resourcegroup --name $webapp --set httpsOnly=true
az webapp log config --resource-group $resourcegroup --application-logging true --docker-container-logging filesystem --name $webapp
