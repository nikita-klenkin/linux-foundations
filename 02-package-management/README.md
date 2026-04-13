# 02 - Package Management

## Project Goal 

Understand how package management works in Ubuntu using APT.

This module covers installation, updating and removing software packages.

---

## Key Concepts

- What is a package?
- What is a repository?
- Difference between update and upgrade
- Dependency handling
- Installing and removing software

---

## What is a Package?

A package is a compressed archive containing:

- Program files
- Configuration files
- Metadata
- Dependency information

In Ubuntu, packages are typically distributed in `.deb` format.

---

## What is APT?

APT (Advanced Package Tool) is the package management system used in Debian-based distributions like Ubuntu.

APT allows:

- Installing software
- Updating package lists
- Upgrading installed software
- Removing packages
- Managing dependencies automatically

---

## What is a Repository?

A repository is a server that stores software packages.

Ubuntu retrieves packages from official repositories defined in:
/etc/apt/sources.list

These repositories contain trusted and verified software.

---

## Command Practiced

### Update package list

```bash
sudo apt update
```

- Downloads the latest package index from repositories.
- Does NOT install or upgrade software.
- Refreshes the list of available package versions.

### Upgrade installed packages

```bash
sudo apt upgrade
```
- Installs newer version of already installed packages.
- Applies security updates and bug fixes.

---

### Install a package

```bash
sudo apt install nginx
```

APT automatically installs required dependencies.

### Inspect package details

```bash
apt show nginx
```

### Remove a package

```bash
sudo apt remove tree
```

- Remove package


```bash
sudo apt purge nginx
```

- Remove including configuration files

### Search for packages

```bash
apt search nginx
```

---

## Dependency Handling

One major advantage of APT is automatic dependency management.
If a package requires additional libraries or tools, APT installs them automatically.

---

## Service Management After Installation

Some packages (like nginx) create and start system services.

Service status can be checked with:

```bash
systemctl status nginx
```

---

## What I Learned

- How Ubuntu retrieves packages from repositories
- The difference between updating the package index and upgrading software
- How dependencies are resolved automatically
- Where repository configuration is stored
- Basic software lifecycle management in Linux

