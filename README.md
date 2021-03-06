# Checkly+Vercel Example for Password-Protected Deployments

This is a simple example of how to run Checkly checks against a Vercel password-protected deployment on each PR commit. It runs against a Vercel sample Next.js app.

## Content

* The `main.tf` Terraform file defines our Checkly Browser check, as well as a snippet which handles the password protection.
* The `scripts` and `snippet` folders contain the source code of both scripts and snippets referenced in the `main.tf` file.

## Usage

0. clone repository, `export TF_VAR_checkly_api_key=<your_checkly_api_key>`
1. `terraform init`
2. `terraform plan`
3. `terraform apply`
4. on Checkly, [link created check](https://www.checklyhq.com/docs/cicd/github/) to your application's GitHub repository
5. commit to PR

Note: you might want to deactivate the browser check to prevent it from running on a schedule.