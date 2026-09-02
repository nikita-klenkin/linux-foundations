# Worklog - 09 Mini Server Project

---

## Step 1 - Prepare the Server

### Goal

Prepare the Linux server by installing the latest updates.

---

### Update package lists

Commands used:

```bash
sudo apt update
```

Result:
- Retrieved the latest package information

---

### Upgrade installed packages

Commands used:

```bash
sudo apt upgrade -y
```

Result:
- Installed all available updates

---

### Reboot the server

Commands used:

```bash
sudo reboot
```

Result:
- The server restarted successfully

---

### Verify the kernel version

Commands used:

```bash
uname -r
```

Result:
- Verified that the latest kernel is running

---

## Step 2 - Collect Server Information

### Goal

Document the current server configuration.

---

### Check hostname

Commands used:

```bash
hostnamectl
```

Result:
- Displayed hostname and operating system information

---

### Check IP address

Commands used:

```bash
ip a
```

Result:
- Displayed the server IP address

---

### Check disk usage

Commands used:

```bash
df -h
```

Result:
- Displayed disk usage

---

### Check memory

Commands used:

```bash
free -h
```

Result:
- Displayed RAM and swap usage

---

### Check CPU information

Commands used:

```bash
lscpu
```

Result:
- Displayed processor details

---

## Step 3 - Configure the Web Server

### Goal

Verify that Nginx is installed, running correctly and ready to serve web pages.

---

### Check installed version

Commands used:

```bash
nginx -v
```

Result:
- Displayed the installed Nginx version

---

### Check service status

Commands used:

```bash
sudo systemctl status nginx
```

Result:
- Verified that the Nginx service is active and running

---

### Check if Nginx starts automatically

Commands used:

```bash
sudo systemctl is-enabled nginx
```

Result:
- Confirmed that Nginx starts automatically during system boot

---

### Test the configuration

Commands used:

```bash
sudo nginx -t
```

Result:
- Configuration test completed successfully

---

### Configure HTTP Port Forwarding

Environment:
- Oracle VirtualBox
- Network mode: NAT

Configuration:
- Host Port: 8080
- Guest Port: 80

Result:
- The web server bacame accessible from the host machine via http://localhost:8080

Lesson:
- Port forwarding allows services running inside a NAT virtual machine to be accessed from the host system

---

### Verify the default web page

Action:
- Opened the default Nginx web page in a browser using:

```text
http://localhost:8080
```

Result:
- The default welcome page was displayed successfully

---

## Step 4 - Deploy a Custom Website

### Goal

Replace the default Nginx page with a custom website.

---

### Locate the web root

Commands used:

```bash
ls /var/www/html
```

Result:
- Located the default website files

---

### Create a custom web page

Command used:

```bash
sudo nano /var/www/html/index.html
```

Result:
- Replaced the default page with a custom HTML page

---

### Apply and verify the changes

Commands used:

```bash
sudo nginx -t
sudo systemctl reload nginx
```

Action:
- Refreshed the website in the browser

Result:
 The custom web page was displayed successfully

---

## Step 5 - Configure the Firewall

### Goal

Configure the firewall to allow only the required services while improving server security.

---

### Check firewall status

Commands used:

```bash
sudo ufw status
```

Result:

- Checked the current firewall status

---

### Allow SSH

Commands used:

```bash
sudo ufw allow OpenSSH
```

Result:

Allowed SSH connections

---

### Allow HTTP

Commands used:

```bash
sudo ufw allow 'Nginx Full'
```

Result:

- Allowed HTTP and HTTPS traffic

---

### Enable the firewall

Commands used:

```bash
sudo ufw enable
```

Result:

- Enabled the firewall successfully

---

### Verify firewall rules

Commands used:

```bash
sudo ufw status verbose
```

Result:

- Verified the active firewall rules

---

## Step 6 - Create a Backup Solution

### Goal

Create a Bash script to back up the website files.

---

### Create the backup directory

Commands used:

```bash
sudo mkdir -p /var/backups/website
```

Result:

- Created a dedicated directory for website backups

---

### Create the backup script

Commands used:

```bash
sudo nano /usr/local/bin/backup-website.sh
```

Script:

```bash
#!/bin/bash

BACKUP_DIR="/var/backups/website"
SOURCE_DIR="/var/www/html"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf "$BACKUP_DIR/website-$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Website backup completed: website-$TIMESTAMP.tar.gz"
```

Result:

- Created a Bash script that generates a compressed and timestamped website backup

---

### Make the script executable

Commands used:

```bash
sudo chmod +x /usr/local/bin/backup-website.sh
```

Result:

- Added execute permission to the backup script

---

### Test the backup

Commands used:

```bash
sudo /usr/local/bin/backup-website.sh
ls -lh /var/backups/website
```

Result:

- The script completed successfully
- A timestamped .tar.gz backup was created

---

## Step 7 - Automate Backups

### Goal

Automate the website backup process using cron.

---

### Check the cron service

Commands used:

```bash
sudo systemctl status cron
```

Result:
- Verified that the cron service is active and running

---

### Configure the backup schedule

Commands used:

```bash
sudo crontab -e
```

Cron job:

```cron
0 2 * * * /usr/local/bin/backup-website.sh
```

Result:

- Configured the backup script to run automatically every day at 02:00

---

### Verify the cron job

Commands used:

```bash
sudo crontab -l
```

Result:

- Confirmed that the website backup job is configured

---

## Step 8 - Final Verification

### Goal

Verify that all components of the server project are configured correctly and working together.

---

### Verify the web server

Commands used:

```bash
sudo systemctl is-active nginx
sudo systemctl is-enabled nginx
sudo nginx -t
```

Result:
- Nginx was active and running
- Nginx was enabled to start automatically
- The Nginx configuration test completed successfully

---

### verify the firewall

Commands used:

```bash
sudo ufw status verbose
```

Result:
- The firewall was active
- Required SSH and web traffic was allowed

---

### Verify the website

Commands used:

```bash
curl http://localhost
```

Result:
- The custom website was successfully returned by Nginx

The website was also tested from the host machine using:

```text
http://localhost:8080
```

Result:
- The website was accessible from the host through VirtualBox port forwarding

---

### Verify the backup system

Commands used:

```bash
sudo ls -lh /var/backups/website
sudo tar -tzf /var/backups/website/<backup-file>.tar.gz
```

Result:
- Website backups were available
- The backup archive contained the expected website files

---

### Verify backup automation

Commands used:

```bash
sudo crontab -l
```

Result:
- The daily website backup job was configured successfully