## Ansible

```bash
brew install ansible
ansible all --user root -i hosts -m ping

ansible webservers -m apt -a "name=mysql-server state=present"
ansible webservers -m apt -a "name=python3 state=present"

ansible-playbook server.yml
ansible-playbook postgres.yml -e "postgresql_version=9.3"
ansible-playbook hello.yml

psql -d wk -U wk -W
```