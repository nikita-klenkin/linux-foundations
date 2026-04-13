# 03 - Filesystem Structure

## Project Goal

Understand the structure of the Linux filesystem and the purpose of key directories.

---

## What is the Linux Filesystem?

Linux uses a hierarchical directory structure that starts from the root directory:

/ = All files and directories are organized under this root.

---

## Important Directories

### /home

Contains personal user directories.

Example:
/home/nikita

---

### /etc

Contains system configuration files.

Examples:
- SSH config
- Network config
- Package sources

---

### /var

Stores variable data such as:
- Logs
- Cache
- Temporary files

---

### /usr

Contains installed programs and libraries.

---

### /bin and /sbin

Contain essential system binaries and commands.

---

### /tmp

Temporary files stored here are often deleted automatically.

---

### /root

Home directory of the root (admin) user.

---

## Navigation Commands Used

```bash
pwd
ls
cd
tree
```

---

## What I Learned

- The Linux filesystem starts at root (/)
- Configuration files are stored in /etc
- Logs are stored in /var/log
- User data is stored in /home
- Understanding filesystem structure is essential for system administration