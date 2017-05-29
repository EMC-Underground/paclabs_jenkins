all: build

validate:
	terraform validate

build: validate
	terraform apply

destroy:
	echo "yes" | terraform destroy
