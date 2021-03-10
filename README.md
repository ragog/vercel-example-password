# Checkly+Vercel Example for Password-Protected Deployments

This is a simple example of how to run Checkly checks against a Vercel password-protected deployment on each PR commit. It runs against a Vercel sample Next.js app.

## Content

The `main.tf` Terraform file defines our Checkly Browser check, as well as a snippet which handles the password protection.

## Usage

0. clone repository, `export TF_VAR_checkly_api_key=<your_checkly_api_key>`
1. `terraform init`
2. `terraform plan`
3. `terraform apply`
4. on Checkly, link created check to your application's GitHub repository
5. commit to PR