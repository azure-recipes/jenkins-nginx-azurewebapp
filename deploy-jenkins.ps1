param(
    [string] $resourcegroup = 'myresourcegroup',
    [string] $location = 'westus',
    [string] $appserviceplan = 'myappserviceplan',
    [string] $webapp = 'mywebapp'
)

az group create --location $location --name $resourcegroup
az appservice plan create --resource-group $resourcegroup --name $appserviceplan --location $location --is-linux
az webapp create --resource-group $resourcegroup --name $webapp --plan $appserviceplan --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml
az webapp config appsettings set --resource-group $resourcegroup --name $webapp --settings WEBSITES_ENABLE_APP_SERVICE_STORAGE=true
az webapp update --resource-group $resourcegroup --name $webapp --set httpsOnly=true
az webapp log config --resource-group $resourcegroup --name $webapp --application-logging true --docker-container-logging filesystem
az webapp config container set --resource-group $resourcegroup --name $webapp --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml
