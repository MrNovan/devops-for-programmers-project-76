deploy:
	ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass