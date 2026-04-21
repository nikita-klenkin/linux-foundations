# 05 - Processes & Services

## Project Goal

Understand how processes and services work in Linux and how to manage them.

---

## What is a Process?

A process is a running instance of a program.

Examples:
- bash
- ssh
- nginx

---

### Viewing Processes

```bash
ps aux
```

Shows all running processes.

---

### Real-Time Process Monitoring

```bash
top
```

Displays live system activity such as CPU and memory usage.

---

## What is a Service?

A service is a background process that runs continuously.

Examples:
- ssh
- nginx
- systemd services

---

### Managing Services

Start a service:

```bash
sudo systemctl start nginx
```

Stop a service:

```bash
sudo systemctl stop nginx
```

Check status:

```bash
systemctl status nginx
```

Enable service at boot:

```bash
sudo systemctl enable nginx
```

Disable service:

```bash
sudo systemctl disable nginx
```

---

## Understanding systemctl

systemctl is the main tool used to manage system services handled by systemd.

---

## Logs and Troubleshooting

View service logs:

```bash
journalctl -u nginx
```

---

## What I Learned

- A process is a running program
- Services run in the background
- systemctl is used to manage services
- Logs help identify issues