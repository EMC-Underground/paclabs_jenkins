all: build

validate:
	terraform validate

build: validate
	terraform apply

destroy:
	terraform destroy
