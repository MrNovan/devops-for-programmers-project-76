deploy:
	ansible-playbook playbook.yml -i inventory.ini --ask-vault-pass

install:
	ansible-galaxy install -r requirements.yml