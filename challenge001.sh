RG="akshackrg2"
LOCATION="eastus"
az group create --name $RG --location $LOCATION 
az deployment group create --name buildvmdeployment -g $RG \
	-f docker-build-machine-vm.json \
	-p docker-build-machine-vm.parameters.json
