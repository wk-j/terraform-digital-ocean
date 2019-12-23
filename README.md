## Digital Ocean

```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```

## Environments

```bash
echo do_token=\"$DO_TOKEN\" > terraform.tfvars
ssh-keygen -l -f ~/.ssh/id_rsa.pub
```

## Resource

- [Writing Ansible Playbooks for New Terraform Servers](https://victorops.com/blog/writing-ansible-playbooks-for-new-terraform-servers?utm_medium=social&utm_source=twitter&utm_campaign=social-t-global-us-en-2020-q4-evgrn-engbl&utm_content=twittercard#subscriptionModal)