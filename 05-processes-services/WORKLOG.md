# Worklog - 05 Processes & Services

---

## 2026-04-20 - Processes and Services

### Goal

Understand how processes and services work in Linux and how to manage them.

---

### Step 1 - View running processes

Commands used:

```bash
ps aux
```

Result:
- Displayed all running processes on the system
- Each process includes user, CPU usage, memory usage and command

Lesson:
A process is a running instance of a program and can be monitored using system tools.

---

### Step 2 - Monitor processes in real time

Commands used:

```bash
top
```

Result:
- Displayed live CPU and memory usage
- Showed active processes updating in real time

Lesson:
- The system can be monitored in real time using tools like "top".

---

### Step 3 - Check nginx installation

Commands used:

```bash
nginx -v
```

Result:
- Displayed the installed nginx version

Lesson:
- The system should be checked before installing software

---

### Step 4 - Check service status

Commands used:

```bash
systemctl status nginx
```

Result:
- nginx service was active and running
- Displayed service details such a PID and status

Lesson:
- systemctl can be used to check the current state of services.

---

### Step 5 - Stop and start service

Commands used:

```bash
sudo systemctl stop nginx
sudo systemctl start nginx
```

Result:
- Service stopped successfully and was no longer active
- Service started again and returned to running state

Lesson:
- Services can be controlled manually using systemctl

---

### Step 6 - Enable service at boot

Commands used:

```bash
sudo systemctl enable nginx
```

Result:
- nginx was configured to start automatically at system boot

Lesson:
- Services can be enabled to run automatically after system restart

---

### Step 7 - View service logs

Commands used:

```bash
journalctl -u nginx
```

Result:
- Displayed logs related to the nginx service
- Logs contained timestamps and service messages

Lesson:
- Logs provide important information for troubleshooting and system monitoring

---

## Key Understanding

- A process is a running program
- Services run in the background
- systemctl is used to manage services
- Logs help identify and troubleshoot issues