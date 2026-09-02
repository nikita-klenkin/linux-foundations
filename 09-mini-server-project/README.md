# 09 - Mini Server Project

## Project Goal

Build and configure a basic Linux web server by combining the administration skills learned throughout the previous modules.

---

## Project Overview

This project demonstrates how to configure and manage a basic Linux server.

The project includes:
- System preparation
- Server information
- Nginx web server
- Firewall configuration
- Custom website
- Backup automation

---

## Project Steps

### 1. Prepare the server

The system was updated to install the latest security patches and software updates.

### 2. Collect server information

Basic system information was collected:
- Hostname
- IP address
- CPU
- Memory
- Disk usage

### 3. Configure Nginx

Install and conifgure Nginx.

---

### 4. Deploy a Custom Website

Replace the default Nginx page with a custom HTML page.

---

### 5. Configure the Firewall

Allow only the required services.

---

### 6. Create a Backup Solution

Create a Bash script that automatically backs up the website files.

---

### 7. Automate Backups

Schedule automatic backups using cron.

---

### 8. Final Verification

Verified the complete server configuration including the web server, firewall, website accessibility, backup system and automated backup schedule.

---

## What I Learned

- Prepare and document a Linux server
- Deploy and verify an Nginx web server
- Configure network access using VirtualBox port forwarding
- Configure firewall rules using UFW
- Deploy a custom website
- Create compressed and timestamped backups with Bash
- Automate administrative tasks using cron
- Verify services and configurations systematically
- Combine multiple Linux administration skills into one practical project

## Environment

- Oracle VirtualBox
- Ubuntu Server 24.04 LTS
- Network Mode: NAT
- SSH Port Forwarding: 2222 → 22
- HTTP Port Forwarding: 8080 → 80