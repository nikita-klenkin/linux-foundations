# Worklog - 00 Lab Setup (Ubuntu Server on VirtualBox)

---

## 2026-02-13 - Initial Setup

### Goal
Create a local Linux lab Environment for DevOps learning

---

### Actions

- Downloaded Ubuntu Server 24.04 LTS ISO
- Created VirtualBox VM
	- 2 GB Ram
	- 2 CPU Cores
	- 40 GB Disk
- Network Mode: NAT
- Installed Ubuntu Server
- Installed OpenSSH Server

Command used:

```bash
sudo apt update
sudo apt upgrade

sudo apt install openssh-server
sudo systemctl start ssh
sudo systemctl status ssh
sudo systemctl enable ssh
```

---

### Problems

#### Problem 1: After Installation, SSH Service was:
inactive (dead):

Cause
No "sudo systemctl start ssh" and "sudo systemctl enable ssh" command entered

Solution:
Enter the command "sudo systemctl start ssh", "sudo systemctl enable ssh" and check with "sudo systemctl status ssh"

Lesson:
Always activate and enable SSH after Installation

---

#### Problem 2: Connection via host attempt failed:
ssh Nikita@10.0.2.15
Error: Connection timed out

Cause: 
VM was using NAT networking.
The internal IP (10.0.2.15) is not directly reachable from the host.

Solution: 
Configured VirtualBox Port Forwarding:
- Host Port: 2222  
- Guest Port: 22  
- Protocol: TCP  

Successful connection:
ssh nikita@localhost -p 2222

Lesson:
When using NAT mode in VirtualBox, the VM receives a private 
internal IP address (e.g., 10.0.2.15).
This internal IP is NOT directly reachable from the host machine.

To allow host-to-VM communication in NAT mode, 
TCP port forwarding must be configured.
Example:
Host Port 2222 → Guest Port 22 (SSH)

Correct connection method:
ssh user@localhost -p 2222

Key understanding:
NAT isolates the VM behind a virtual router.