## Terraform Project to provision infrastructure in Azure Cloud

### Prerequisites :-

1. Unix-based operating system, such as Linux, macOS or Windows Subsystem for Linux
2. GNU-like build environment available at the command line
3. Account with elevated rights to install the dependencies
4. Azure subscription and appropriate permissions
5. Terraform CLI installed
6. Azure CLI installed and configured

### Terraform project creates the following Azure resources :-

1. Resource Group
2. Storage Account
3. Storage Container

### Configuration Files :-

1. `providers.tf`: Azure provider configuration
2. `main.tf`: Contains the main resource definitions
3. `variables.tf`: Defines customizable variables
4. `outputs.tf`: Specifies output values for resource information

### To start the deployment :-

1. Initialize Terraform: terraform init
2. Format the configuration file: terraform fmt
3. Validate the configuration file: terraform validate
2. Review the planned changes: terraform plan -out=plan_v1
3. Apply the infrastructure: terraform apply "plan_v1"
4. To destroy the infrastructure: terraform destroy

### Assumptions :-

1. Terraform state is stored locally for now
2. West Europe region is acceptable for resource deployment
3. Azure subscription is properly configured
4. Required Azure permissions are granted

### Problem faced during this task :-

1. Error: Provider configuration not found  
   Reason: Terraform initialization not performed  
   Resolution: Run `terraform init`  
   
2. Error: Resource name already exists  
   Reason: Azure resources must have globally unique names  
   Resolution: Modify resource names in main.tf to ensure uniqueness  
