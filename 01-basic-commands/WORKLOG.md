# Worklog - 01 Basic Commands

---

## 2026-02-23 - Navigation & File Management Practive

### Goal

Practice esential Linux commands for navigation and file handling.

---

### Actions

Verified current directory:

```bash
pwd
```


Listed directory contents:

```bash
ls
ls -l
ls -a
```


Created test directory:

```bash
mkdir lab-test
cd lab-test
```


Created test files:

```bash
touch file1.txt
touch file2.txt
touch notes.txt
```


Moved and copied files:

```bash
mkdir backup
cp file1.txt backup/
mv file2.txt renamed.txt
```


Displayed file content:

```bash
nano renamed.txt - "test" written into the text file
cat renamed.txt
```


Deleted test environment:

```bash
cd ..
rm -r lab-test
```

---

### Problems

#### Problem: Folder "lab-test" could not be deleted
Error: "Is a directory"

Cause:
Attempted to delete directory without -r

Solution:
To delete a folder, you have to type rm -r

Lesson:
Directories require the recursive flag -r for deletion
