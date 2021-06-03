# ubuntu-20.04-wsl-setup

## Update ubuntu

```bash
sudo apt update && sudo apt upgrade -y
```

## Cloning this repo

### ssh local setup

```bash
ssh-keygen
```

### Copy key to github account

```bash
cat ~/.ssh/id_rsa.pub
```

+ https://github.com/settings/keys

### Do the cloning

```bash
git clone git@github.com:pietrodito/ubuntu-20.04-wsl-setup.git ~/OS-setup
```
