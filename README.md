# ubuntu20.04_autoinstall

Auto install of Ubuntu 20.04

# Requirements

What we only need is curl. Install `curl` before you run the command.

```
$ sudo apt-get install curl -y
```

# All Things are ready!

Just run the below command to bootstrap your Ubuntu setting:

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_independent_packages.sh)"
```

---

**If you want to install zsh**:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_zsh.sh)"
```

**If you want to install ROS-Noetic (for Ubuntu 20.04)**:

```
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros.sh)" ${YOUR BASH}
# if you use `bash`, 
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros.sh)" bash
# if you use `zsh`, 
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros.sh)" zsh
```


