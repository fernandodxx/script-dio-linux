# Curso de linux da DIO

## 🐧 Linux User and Group Management Scripts

This repository contains shell scripts created during the **Linux course** offered by [DIO](https://www.dio.me/en).

## 📁 Scripts

### 1. `criar_user.sh`
This script automates the creation of guest users in a Linux system. It performs the following tasks:
- Creates users (`guest10` to `guest13`)
- Assigns `/bin/bash` as their default shell
- Sets encrypted default password (`Password123`)
- Forces password change at first login

### 2. `iac1.sh`
This script is used to configure a basic user and group management environment. It includes:
- Creation of directories: `/public`, `/adm`, `/sales`, `/security`
- Creation of user groups: `GRP_ADM`, `GRP_SALES`, `GRP_SECURITY`
- User creation and group assignment
- Directory ownership and permission setup

## 🔐 Security
All users are created with an initial encrypted password and are forced to change it on their first login.

> Default password used: `Password123`

## 🚀 Getting Started

To run these scripts, make sure you have root privileges. Then execute:

```bash
sudo bash criar_user.sh
sudo bash iac1.sh
