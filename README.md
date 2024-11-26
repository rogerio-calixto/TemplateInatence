# TemplateInstance
Template para criação de recursos de instância

# Instrucoes:

Informar as variaveis conforme a sua necessidade:

- profile
- projeto
- regiao
- ambiente
- criado_por
- ami
- instance_type
- keypair_name
- vpc_id
- subnet_id
- sg_id
- associate_public_ip
- instance_name
- userdata <OPCIONAL>
- instance_profile_name <OPCIONAL>
- automacao <OPCIONAL> ["enabled" -> Padrão ou "disabled"]
- root_block_device_size <OPCIONAL> [10 -> Padrão]
- root_block_device_type <OPCIONAL> ["gp2" -> Padrão]
- disable_api_termination <OCTIONAL> [false -> Padrão]

## ExemplO:

- profile                 -> "manager"
- projetO                 -> "servidor"
- regiao                  -> "us-east-1"
- ambiente                -> "hml"
- criado_por              -> "terraform"
- ami                     -> "ami-0715c1897453cabd1"
- instance_type           -> "t3.micro"
- keypair_name            -> "futura-keypair"
- vpc_id                  -> "vpc-123456c2e3a68b2de" 
- subnet_id               -> "subnet-13512e76bb61fbf58"
- sg_id                   -> "sg-8f3186c1673b8c112"
- associate_public_ip     -> "true"
- instance_name           -> "futura-instance"
- automacao               -> "enabled"
- root_block_device_size  -> 20
- root_block_device_type  -> "gp2"
- disable_api_termination -> true

# Outputs

Alguns dados da infraestrutura criada serao retornados:

- ec2_instance_id -> string
- ec2_private_ip -> string
- ec2_public_ip -> string

# Commands Terraform

## Plan
terraform plan -out="tfplan.out"
## Apply
terraform apply "tfplan.out"
## Destroy
terraform destroy -auto-approve