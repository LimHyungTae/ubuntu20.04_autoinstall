# ubuntu20.04_autoinstall

Auto install of Ubuntu 20.04

# Requirements

What we only need is curl. Install `curl` before you run the command.

```
$ sudo apt-get install curl -y

```

# Then, just run the below command to bootstrap your Ubuntu setting:

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_independent_packages.sh)"
```
