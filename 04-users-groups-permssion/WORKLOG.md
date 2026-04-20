# Worklog - 04 Users, Groups & Permissions

---

## 2026-04-14 - Users and Permissions

### Goal

Understand how users, groups and file permission work in Linux.

---

### Step 1 - Create a new user

Commands used:

```bash
sudo adduser testuser
```

Result:
- A new user "testuser" was created
- A home directory was automatically created in /home/testuser

Lesson:
- Creating a user also creates a dedicated home directory.

---

### Step 2 - Switch user

Commands used:

```bash
su testuser
whoami
```

Result:
- Successfully switched to user "testuser"
- The command "whoami"  showed "testuser"

Lesson:
- The system allows switching between users and confirms identity with "whoami".

---

### Step 3 - Create and inspect file permissions

Commands used:

```bash
touch test.txt
ls -l
```

Result:
- A new file "test.txt" was created
- Default permissions were set (rw-r--r--)

Lesson:
- Newly created files receive default permissions defined by the system.

---

### Step 4 - Modify permissions

Commands used:

```bash
chmod 777 test.txt
ls -l
```

Result:
- Permissions changed to rwxrwxrwx
- All users have read, write and execute permissions

Then:

```bash
chmod 644 test.txt
```

Result:
- Permissions changed to rw-r--r--
- Only the Owner can write, others can only read

Lesson:
- Permissions can be changed using chmod and should be set carefully for security.

---

### Step 5 - Change ownership

Commands used:

```bash
sudo chown testuser:testuser test.txt
ls -l
```

Result:
- Ownership of the file was changed to "testuser"
- Both user and group ownership were updated

Lesson:
- Ownership defines who controls the file and can be changed using chown.

---

### Step 6 - Check groups

Commands used:

```bash
groups
```

Result:
- Displayed the groups of the current user

Lesson:
- Groups are used to manage permissions across multiple users.

---

### Key Understanding

- Linux supports multiple users with separate environments
- Permissions define access control for files
- Ownership and groups are essential for managing access
- chmod and chown are key tools for system administration