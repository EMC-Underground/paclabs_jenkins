all: build

validate:
	terraform validate

build: validate
	terraform apply

debug: validate
	TF_LOG=TRACE terraform apply

destroy:
	echo "yes" | terraform destroy
