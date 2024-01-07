# MIGRATION TO TERRAFORM & DRIFT DETECTION

https://youtu.be/-4IMy5ihiiU


```bash
    terraform plan -generate-config-out=generated_resources.tf

    terraform import aws_instance.my_k8s_ec2 i-xxxxxx3333333

    terraform refresh
    terraform apply -refresh-only -auto-approve

    # Safe
    terraform plan -refresh-only
    terraform apply -refresh-only


```

```hcl
# import cloud resources

provider "aws" {
  region = "ap-south-1"
}

import {
    id= "i-038ee8413f89dc055"

    to = aws_instance.my_k8s_ec2
}
```