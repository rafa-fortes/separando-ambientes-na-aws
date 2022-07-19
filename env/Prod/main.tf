module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "IaC-Prod"
  security_group = "grupo-de-seguranca-Prod"
}

output "IP-Prod" {
  value = module.aws-prod.IP_publico
}