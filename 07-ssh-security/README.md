# 07 - SSH & Security

## Project Goal

Understand how to securely access a Linux server using SSH and apply basic security configurations.

---

## What is SSH?

SSH (Secure Shell) is a protocol used to securely connect to remote systems.

It allows:
- Remote login
- Command execution
- Secure data transfer

---

## Connect via SSH

Example:

```bash
ssh nikita@localhost -p 2222
```

---

## SSH Configuration File

Location:
/etc/ssh/sshd_config

---

## Important SSH Settings

- Port -> Change default port (22)
- PermitRootLogin -> Disable root login
- PasswordAuthentication -> Disable password login (use keys)

---

## Restart SSH Service

```bash
sudo systemctl restart ssh
```

---

## SSH Key Authentication

Generate key:

```bash
ssh-keygen
```

Add public key to authorized_keys on the server:

```powershell
type $env:USERPROFILE\.ssh\id_ed25519.pub
```

Copy the displayed public key into:

```plaintext
~/.ssh/authorized_keys
```

---

## Why SSH Keys?

- More secure than passwords
- Protect against brute-force attacks

---

## Basic Security Practices

- Disable root login
- Use SSH keys
- Use strong passwords
- Limit access via firewall

---

## What I Learned

- SSH allows secure remote access
- SSH keys improve security
- Server access should always be restricted and monitored