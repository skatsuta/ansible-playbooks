# Vagrant + Ansible

## 実行方法

```sh
$ ls
README.md   Vagrantfile ansible.cfg hosts
$ vagrant ssh-config > ssh.config
$ ls
README.md   Vagrantfile ansible.cfg hosts       ssh.config
$ ansible default -m ping
default | success >> {
    "changed": false,
    "ping": "pong"
}
```

