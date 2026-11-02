# Task 2 - Terraform (scalable: change `replicas`)
```
terraform init
terraform plan
terraform apply -auto-approve
terraform apply -var replicas=5   # scale out
terraform destroy
```

## Output
![init](../screenshots/q2-terraform-init.png)
![plan](../screenshots/q2-terraform-plan.png)
![apply](../screenshots/q2-terraform-apply.png)
![nginx](../screenshots/q2-nginx-web-0.png)
