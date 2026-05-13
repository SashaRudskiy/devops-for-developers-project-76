setup:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini code/deploy.yml --vault-password-file .vault_pass

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file .vault_pass
