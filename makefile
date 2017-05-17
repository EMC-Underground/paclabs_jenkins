all: build

validate:
	packer validate -var-file=variables paclabs_vm_tmpl/ubuntu_16.04.json

build: validate
	packer build -var-file=variables paclabs_vm_tmpl/ubuntu_16.04.json
