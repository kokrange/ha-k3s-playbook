# High Available k3s playbook(traefik, nfs, redis, mongo rs and mysql included).
This playbook is Ubuntu Server tested(Debian working? Maybe).

## Usage
Generate a ssh-key pair named k3s-key/k3s-key.pub under folder ssh-key/

Copy identity to all hosts.
```sh
ssh-copy-id -i ssh-key/k3s-key.pub user@remote-host
```
Change configuration-values in following files correspondingly:
- hosts.yaml
- group_vars/all.yaml
- roles/prep/files/resolv.conf
- roles/nfs/files/exports

You can have >=3 odd number of k3s servers, and >=0 k3s agents.

Run the playbook. This book is idempotent, means that you can rerun it without worrying about the side effects. Even rerun it after adding more servers and agents.
```sh
ansible-playbook -i hosts.yaml k3s.yaml
```
