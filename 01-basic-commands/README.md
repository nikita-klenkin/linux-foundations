# 01 - Basic Commands

## Project Goal
Understand and practice essential Linux terminal commands for navigation, file management and system interaction.

---

## Navigation Commands

### pwd

Print Working directory - Displays the full path of the current directory you are in.


### ls

List - Shows the files and directories in the current directory.

Options:
- ls -l -> List (long format) - Displays detailed information about files and directories, including permissions, owner, size, and modification date.

- ls -a -> List all - Shows all files, including hidden files (files that start with a dot . ).


### cd

Change Directory - Changes the current directory to another directory.

Example: 
```bash
cd /home/user
```


### tree

Directory tree view - Displays files and directories in a tree-like structure.
(If not installed: sudo apt install tree)


---

## Files & Directories

### touch

Create empty file - Creates a new empty file or updates the timestamp of an existing file.

Example: 
```bash
touch file.txt
```


### mkdir

Make directory - Creates a new directory (folder).

Example: 
```bash
mkdir myfolder
```


### rm

Remove file - Deletes a file.

Example: 
```bash
rm file.txt
```


### rm -r

Remove recursively - Deletes a directory and all its contents (files and subdirectories).

Example: 
```bash
rm -r myfolder
```


### cp

Copy - Copies files or directories.

Example: 
```bash
cp file.txt backup.txt
```


### mv

Move / Rename - Moves a file or Directory to another location or renames it.

Example (move):
```bash
mv file.txt /home/user/
```

Example (rename): 
```bash
mv old.txt new.txt
```

---

## Display & Read File Content

### cat

Concatenate / Display file content - Displays the full content of a file in the terminal.

Example: 
```bash
cat file.txt
```


### less

View file page by page - Opens a file in a scrollable view (better for large files).

Example: 
```bash
less file.txt
```


### head

Show beginning of file - Display the first 10 lines of a file.

Example: 
```bash
head file.txt
```


### tail

Show end of file - Display the last 10 lines of a file

Example: 
```bash
tail file.txt
```

---

## Help & System Information Commands

### man

Manual pages - Displays the Manual (documentation) for a command.

Example: 
```bash
man ls
```


### --help

Help Option - Shows a short help page with available Options for a command.

Example: 
```bash
ls --help
```


### whoami

Current user - Displays the username of the currently logged-in user.

Example: 
```bash
whoami
```


### uname -a

System Information - Displays detailed System Information (kernel, Architecture, OS Version).

Example:
```bash
uname -a
```


### history

Command history - Shows a list of previously executed commands.

Example: 
```bash
history
```


### clear

Clear terminal - Clears the terminal screen for better readability.

Example: 
```bash
clear
```

---

## What I learned

- Confident navigation in the Linux filesystem
- Safe file and directory management
- Basic understanding of command-line workflows
