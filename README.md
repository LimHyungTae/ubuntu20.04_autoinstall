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

Below things are installed (update: Mar 10th, 2023)
* git
* wget
* vim
* chrome
* fonts-powerline (for `agonster` theme for zsh user)
* Some C++ libraries
* Video utils for playing mkv file
* xpad

---

**If you want to install zsh**:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_zsh.sh)"
```

**If you want to install ROS-Noetic (for Ubuntu 20.04)**:

**NOTE** the you have to use `bash`, not `sh` in front of the command (because Ubuntu's shell is [dash](https://velog.io/@jiyeong3141592/binsh-%EC%9D%98%EB%AF%B8). 

You can check it by typing `ls -ahl /bin/sh` in your cmd.

```
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros_noetic.sh)${YOUR BASH}" 
# e.g. if you use `bash`, 
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros_noetic.sh)bash" 
# e.g. if you use `zsh`, 
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/LimHyungTae/ubuntu20.04_autoinstall/main/install_ros_noetic.sh)zsh" 
```


