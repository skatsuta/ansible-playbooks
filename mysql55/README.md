# Provision CentOS 6.6 + MySQL 5.5 by Ansible on Vagrant

## Usage

### Basic

```sh
$ vagrant up
# or if VM is already running, then
$ vagrant provision
```

### If you want to launch CentOS only

Comment out the lines below in Vagrantfile:

```ruby
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
  end
```

and run

```sh
$ vagrant ssh-config > ssh.config
$ vagrant up
```

