ping:
	ansible -i inventory.ini all -m ping

uptime:
	ansible -i inventory.ini all -a "uptime"

deploy:
	ansible-playbook playbook.yml -i inventory.ini --ask-vault-pass

install:
	ansible-galaxy install -r requirements.yml

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml