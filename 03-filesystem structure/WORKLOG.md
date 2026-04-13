# Worklog - 03 Filesystem Structure

---

## 2026.04.13 - Understanding filesystem Structure

### Goal

Understand how the filesystem is structured.

---

### Step 1 - Understand root

Commands used:

```bash
cd /
ls
```

Result:
- Displayed main directories such as /home, /etc, /var, /usr and /bin

Lesson:
- The root directory (/) is the starting point of the entire Linux filesystem

---

### Step 2 - explore important folders

#### /etc

Commands used: 

```bash
cd /etc
ls
```

Result: 
- Contains the various configuration files for system services and applications

Lesson: 
- /etc stores system-wide configuration files

#### /var/log

Commands used:

```bash
cd /var/log
ls
```

Result:
- Contains system log files such as syslog

Lesson:
- System Logs are stored in /var/log and are useful for troubleshooting

#### /home

Commands used:

```bash
cd /home
ls
```

Result:
- Contains user directories

Lesson:
- User data is stored in /home

---

### Step 3 - Analyze system logs

#### View logs

Commands used:

```bash
cd /var/log
ls
cat syslog
```

Result:
- The /var/log directory contains multiple log files
- The syslog file shows system events with timestamps and service messages

Lesson:
- System logs are stored in /var/log and are essential for monitoring and troubleshooting system behavior

---

### Step 4 - See tree structure

#### Visualize directory structure

Commands used:

```bash
tree /
```

Result:
- Displays the filesystem in a hierarchical tree structure
- Output can become very large when running on root (/)

Lesson:
- The tree command helps visualize the structure of the filesystem and understand directory relationships