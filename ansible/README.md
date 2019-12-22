## Ansible

```
```bash
brew install ansible
ansible all -i root@128.199.160.38, -m ping

ansible-playbook --user root  -i ./hosts server.yml
ansible-playbook --user root postgres.yml -i ./hosts -e "postgresql_version=9.3"

psql -d wk -U wk -W
```