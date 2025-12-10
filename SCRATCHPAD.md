.vault_pass
아무 비밀번호 - `ansible-vault`/`encrypt*/decrypt*` 에 사용함


ansible-galaxy role install --role-file ./requirements.yml --force


ansible-vault encrypt_string "asdfasdf3d3"

ansible-vault encrypt        roles/zsh/files/zsh/secrets.zsh


ansible-playbook ./playbooks/setup-dev-machine.yml -i inventories/inventory.yaml --limit test
ansible-playbook ./playbooks/setup-dev-machine.yml -i inventories/inventory.yaml --limit proxmox-dev