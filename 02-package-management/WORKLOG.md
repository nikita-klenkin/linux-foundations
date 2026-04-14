# Worklog - 02 Package Management

---

## 2026-02-27 - Package Management with APT

### Goal 

Understand how Ubuntu manages software packages using APT.

---

### Step 1 - Update Package Index

Command used:

```bash
sudo apt update
```

Result:
- Package lists were downloaded from official Ubuntu repositories.
- No software was instlled during this step.
- The system showed how many packages can be  upgradet.

Lesson:
apt update refreshes the package index but does not install updates.

### Step 2 - Upgrade Package Index

Command used:

```bash
sudo apt upgrade
```

Result:
- Existing packages were upgraded to newer versions.
- Security and stability updates were installed.

Lesson:
- apt upgrade installs newer version of already installed packages.

## 2026.03.11 - Continued Work

### Step 3 - Install nginx and check status

Command used:

```bash
sudo apt install nginx
```

Result:
- nginx and additional dependencies were installed automatically.
- The nginx service starts automatically after installation.
- Port 80 was opened locally for the web server.

Check service status:

```bash
systemctl status nginx
```

Rseult:
- Service was active and running.

Lesson:
APT automatically resolves dependencies and system services can start automatically after installation.

### Step 4 - Inspect Package Information

Command used:

```bash
apt show nginx
```
Result:
- Displayed package version
- Displayed dependencies
- Displayed package description

Lesson
APT provides detailed data about installed packages.

### Step 5 - Remove nginx

Command used:

```bash
sudo apt remove nginx
```
Result:
- nginx was removed
- Dependencies remained installed

remove package including configuration files:

```bash
sudo apt purge nginx
```
Lesson:
remove: deletes the package but keeps configuration files.
purge: removes package including configuration files.





