# Worklog - 07 SSH and Security

---

## 2026-05-11 - SSH and Security

### Goal

Understand how to connect to a server via SSH and apply basic security practices.

---

### Step 1 - Connect to the server via SSH

Commands used (Windows PowerShell):

```powershell
ssh nikita@localhost -p 2222
```

Result:
- Successfully connected to the local Ubuntu server via SSH

Lesson:
- SSH allows secure remote access to a system

---

### Step 2 - Generate SSH key on Windows

Commands used (Windows PowerShell):

```powershell
ssh-keygen
```

Result:
- SSH key pair (public and private key) was generated on the Windows host system

Lesson:
- SSH keys are used for secure authentication without using passwords

---

### Step 3 - Display public SSH key

Commands used (Windows PowerShell):

```powershell
type $env:USERPROFILE\.ssh\id_ed25519.pub
```

Result:
- Displayed the public SSH key stored on the Windows host system

Lesson:
- The public key is copied to the server for authentication

--- 

### Step 4 - Configure authorized_keys on Ubuntu server

Commands used (Ubuntu VM):

```bash
mkdir -p ~/.ssh
nano ~/.ssh/authorized_keys
```

Result:
- Created the .ssh directory and authorized_keys file

Additional step:
- Copied the public SSH key from the Windows host system into the authorized_keys file on the Ubuntu server

Lesson:
- The authorized_keys file stores allowed public SSH keys for authentication

---

### Step 5 - Set correct SSH permissions

Commands used (Ubuntu):

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

Result:
- Secure permissions were applied to SSH configuration files

Lesson:
- SSH requires strict file permissions for security reasons

---

### Step 6 - Login using SSH key authentication

Commands used (Windows PowerShell):

```powershell
ssh nikita@localhost -p 2222
```

Result:
- Successfully logged into the Ubuntu server without entering a password

Lesson:
- SSH key authentication is more secure and convenient than password authentication

---

### Step 7 - View SSH configuration

Commands used (Ubuntu VM):

```bash
cat /etc/ssh/sshd_config
```

Result:
- Displayed SSH server configuration settings

Lesson:
- SSH behavior is controlled through the sshd_config configuration file

---

### Step 8 - Restart SSH service

Commands used (Ubuntu VM):

```bash
sudo systemctl restart ssh
systemctl status ssh
```

Result:
- SSH service restarted successfully
- Verified that the SSH service was active and running

Lesson:
- Services often need to be restarted after configuration changes

---

## Problems

### Problem 1 - ssh-copy-id returned error

Error:
"Too many arguments"

Cause:
- The port parameter (-p) was placed after the hostname

Incorrect command:

```bash
ssh-copy-id nikita@localhost -p 2222
```

Solution:
- Place the port parameter before the hostname

Correct command:

```bash
ssh-copy-id -p 2222 nikita@localhost
```

Lesson:
- Correct command syntax and parameter order are important in Linux administration

---

### Problem 2 - ssh-copy-id was not available on Windows

Error:
"ssh-copy-id is not recognized as the name of a cmdlet"

Cause:
- ssh-copy-id is not installed by default on Windows PowerShell

Solution:
- Manually copied the public SSH key into the authorized_keys file on the Ubuntu server

Lesson:
- SSH key authentication can also be configured manually without ssh-copy-id

---

### Problem 3 - Connection refused on port 2222

Error:
"connect to host localhost port 2222: Connection refused"

Cause:
- The command was executed inside the Ubuntu VM instead of in the Windows host system

Solution:
- Executed SSH commands from Windows PowerShell instead of inside the VM

Lesson:
- In this setup, Windows acts as the SSH client and Ubuntu acts as the SSH server

---

## Key Understanding

- SSH provides secure remote access to Linux systems
- SSH keys are safer than password authentication
- Public keys are stored in authorized_keys
- SSH requires correct file permissions
- Windows can act as an SSH client for a Linux server
- Services often need to be restarted after configuration changes
- Correct command syntax is important in Linux administration