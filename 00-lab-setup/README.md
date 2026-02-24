# 00 - Linux lab setup - Ubuntu Server 24.04

## Project Goal
Build a structured Linux Server environment as foundation for DevOps engineering.

---

## Environment

- Host OS: Windows 11
- Virtualization: Oracle VirtualBox
- Guest OS: Ubuntu Server 24.04 LTS
- CPU: 2 Cores
- RAM: 2 GB
- Disk: 40 GB

---

## Network Configuration

- Network Mode: NAT
- Guest IP (NAT internal): 10.0.2.15
- SSH Enabled: Yes
- SSH Access via Port Forwarding (2222 -> 22)

---

## Installation Steps

1. Download Ubuntu Server ISO
2. Create VM in VirtualBox
3. Install Ubuntu Server
4. Install with OpenSHH
5. System update
6. Configure Port Forwarding
7. Test SSH connection

---

## Result

Successfully connected from Windows host via:
```PowerShell
ssh nikita@localhost -p 2222