# Udacity Azure DevOps Project 1

Deploys Azure policy and a Packer-built image via Terraform.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

## Prerequisites

- Azure account
- Packer
- Terraform

## Deployment

1.  **Set Azure Credentials:**
    ```bash
    export AZ_CLIENT_ID="..."
    export AZ_CLIENT_SECRET="..."
    export AZ_TENANT_ID="..."
    export AZ_SUBSCRIPTION_ID="..."
    ```
    (Replace placeholders with your values.)

2.  **Create Resource Group:**
    Create `udacity-assignment1-rg` (or your preferred name) via portal or CLI.

3.  **Deploy Policy:**
    Deploy and assign policy to the resource group (e.g., via Azure portal).

4.  **Build Packer Image:**
    ```bash
    packer build packer/server.json
    ```

5.  **Terraform Setup:**
    ```bash
    terraform init
    terraform plan -out solution.plan
    ```

6.  **Terraform Deploy:**
    ```bash
    terraform apply solution.plan
    ```

## Cleanup

Destroy infrastructure:

```bash
terraform destroy

