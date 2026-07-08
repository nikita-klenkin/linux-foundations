# 08 - Bash Scripting

## Project Goal

Understand the basics of Bash scripting and automate simple Linux tasks.

---

## What is Bash?

Bash (Bourne Again Shell) is the default shell on many Linux systems.

It can:
- Execute commands
- Run scripts
- Automate repetitive tasks

---

## Create a Bash Script

Example:

```bash
nano backup.sh
```

---

## Script Structure

Example:

```bash
#!/bin/bash

echo "Hello World"
```

---

## Make Script Executable

```bash
chmod +x backup.sh
```

---

## Run a Script

```bash
./backup.sh
```

---

## Variables

Examples:

```bash
name="Nikita"

echo $name
```

---

## User Input

Example:

```bash
read username

echo "Hello $username"
```

---

## Conditional Statements

Example:

```bash
if [ -f test.txt ]; then
    echo "File exists"
fi
```

---

## Loops

Example:

```bash
for file in *.txt; do
    echo $file
done
```

---

## Basic Automation Example

```bash
#!/bin/bash

mkdir backup
cp *.txt backup/

echo "Backup completed"
```

---

## What I Learned

- Bash scripts automate Linux tasks
- Scripts can execute multiple commands automatically
- Variables and conditions add flexibility
- Bash scripting is essential for Linux administration and DevOps