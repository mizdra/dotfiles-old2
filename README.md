# dotfiles
![](https://github.com/mizdra/dotfiles/workflows/macos-ci/badge.svg)


## Setup
```bash
$ git clone https://github.com/mizdra/dotfiles
$ cd dotfiles
$ ./setup.sh
```

## Requirements
- Xcode Command Line Tools
- [Homebrew](https://brew.sh/index_ja)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Rosetta 2
- SSH key registered on GitHub

```console
$ xcode-select --install

$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ eval "$(/opt/homebrew/bin/brew shellenv)"

$ brew install ansible

$ sudo softwareupdate --install-rosetta

$ ssh-keygen -t ed25519 -C "mizdra@mizdra-mbp2021"

$ ./setup.sh
```

## Benchmark
See: https://mizdra.github.io/dotfiles/dev/bench/

## 思想