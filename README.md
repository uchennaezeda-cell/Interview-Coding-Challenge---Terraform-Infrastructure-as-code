Terraform Infrastructure as Code - Coding Challenge

Overview
This repository provides the solution to the DevOps coding challenge, provisioning AWS infrastructure with Terraform. 
The implementation focuses on a clean, modular design with parameterized and reusable code to ensure flexibility, scalability, 
and ease of maintenance.

Requirements Addressed:
-   VPC with CIDR block 10.0.0.0/16
-   Three public subnets across different Availability Zones
-   Three private subnets across different Availability Zones
-   Public instances have internet access, private subnets do not
-   EC2 instance provisioned in a public subnet
-   Security Group configured to allow HTTP (port 80)
-   Terraform modules created for reusability
-   Clean commit history to demonstrate thought process

Repository Structure

    main.tf                # Root module wiring VPC and EC2
    variables.tf           # Input variables
    outputs.tf             # Outputs for VPC, subnets, EC2 IP
    Terraform.tfvars       # Defines variable values for flexible and reusable deployments.” 
    modules/
      Networking/          # VPC,gatways,rout-tables,security-group,subnets.
      Compute/             # EC2 instance 
    README.md              # Documentation
    .gitignore             # Ignored Terraform artifacts

Usage Instructions

1.  Clone the repository: git clone https://github.com/uchennaezeda-cell/terraform-assessment.git
2.  Navigate into the repo: cd terraform-assessment
3.  Initialize Terraform: terraform init
4.  Preview the plan: terraform plan
5.  Apply changes: terraform apply
6.  Destroy resources (when done): terraform destroy


Commit History Strategy
Commits are structured step-by-step for clarity 


