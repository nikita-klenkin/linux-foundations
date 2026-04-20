# 4 - Users, Groups & Permissions

## Project Goal

Understand how users, groups and file permissions work in Linux and how access to files and system resources is controlled.

---

## Users in Linux

Linux is a multi-user operating system.

Each user has:
- Username
- User ID (UID)
- Home directory

Example:

```plaintext
/home/nikita
```

---

## Root User

The root user is the system administrator.
- Has full access to the system
- Can read, modify and delete all files
- Can manage users, services and permissions

---

## Creating Users

```bash
sudo adduser testuser
```

Creates a new user with a home directory.

---

## Switching Users

```bash
su testuser
```

Check current user:

```bash
whoami
```

---

## Groups

Users can belong to one or more groups.
Groups are used to manage permissions for multiple users.

Check groups:

```bash
groups
```

---

## File Permissions

Each file has three permission levels:
- Owner
- Group
- Others

View permissions:

```bash
ls -l
```

Example:

```plaintext
-rw-r--r-- 1 nikita nikita file.txt
```

---

## Permission Structure

```plaintext
-rw-r--r--
```

First character: file type (- = file, d = directory)
Owner: rw- (read,write)
Groups: r-- (read)
Others: r-- (read)

---

## Permission Values

Linux permissions are based on numbers.

Each permission has a value:
- Read (r) = 4
- Write (w) = 2
- Execute (x) = 1

These values are added together to get the final number.

Examples:

7 = 4 + 2 + 1 -> rwx (read, write, execute)
6 = 4 + 2 -> rw- (read, write)
5 = 4 + 1 -> r-x (read, execute)
4 = 4 -> r-- (read only)

---

## Changing Permissions (chmod)

Permissions control what users are allowed to do with a file.

Example:

```bash
chmod 755 file.txt
```

Means:
- Owner -> 7 -> rwx (full access)
- Group -> 5 -> r-x (read + execute)
- Others -> 5 -> r-x (read + execute)

---

## Changing Ownership (chown)

Ownership defines who the file belongs to.

Each file has:
- Owner (user)
- Group

Example:

```bash
sudo chown testuser:testuser file.txt
```

Means:
- Owner = testuser
- Group = testuser

---

## Difference Between chmod and chown
- chmod -> changes permissions (what is allowed)
- chown -> changes ownership (who owns the file)

---

## Security Considerations

```bash
chmod 777 file.txt
```

Means:
- Everyone can read, write and execute the file

This is not secure and should be avoided.

---

## What I Learned

- Linux is a multi-user system
- Users and groups control access to resources
- Permissions define who can read, write or execute files
- chmod is used to change permissions
- chown is used to change ownership
- Permissions are critical for security and system stability