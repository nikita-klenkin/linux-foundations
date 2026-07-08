# Worklog - 08 Bash Scripting

---

## 2026-07-08 - Bash Scripting

### Goal

Understand basic Bash scripting concepts and automate simple Linux tasks.

---

### Step 1 - Create first script

Commands used:

```bash
nano hello.sh
```

Script content:

```bash
#!/bin/bash

echo "Hello World"
```

Result:
- Created a simple Bash script

Lesson:
- Bash scripts can automate commands and tasks

---

### Step 2 - Make script executable

Commands used:

```bash
chmod +x hello.sh
ls -l
```

Result:
- The script became executable

Lesson:
- Scripts require execute permissions to run directly

---

### Step 3 - Execute script

Commands used:

```bash
./hello.sh
```

Result:
- The script printed "Hello World"

Lesson:
- Scripts can be executed directly from the terminal

---

### Step 4 - Use variables

Commands used:

```bash
nano variables.sh
```

Script content:

```bash
#!/bin/bash

name="Nikita"

echo $name
```

Result:
- The script displayed the stored variable value

Lesson:
- Variables store reusable values in scripts

---

### Step 5 - User input

Commands used:

```bash
nano input.sh
```

Script content:

```bash
#!/bin/bash

read username

echo "Hello $username"
```

Result:
- The script accepted user input and displayed it

Lesson:
- Scripts can interact with users through input

---

### Step 6 - Conditional statement

Commands used:

```bash
nano condition.sh
```

Script content:

```bash
#!/bin/bash

if [ -f test.txt ]; then
    echo "File exists"
fi
```

Result:
- The script checked if a file existed

Lesson:
- Conditions allow scripts to make decisions

---

### Step 7 - Loop example

Commands used:

```bash
nano loop.sh
```

Script content:

```bash
#!/bin/bash

for file in *.txt; do
    echo $file
done
```

Result:
- The script looped through text files

Lesson:
- Loops automate repetitive tasks

---

### Step 8 - Make all scripts executable

Commands used:

```bash
chmod +x *.sh
ls -l
```

Result:
- Execute permissions were added to all Bash scripts using chmod +x *.sh

Lesson:
- Multiple scripts can be made executable at once using chmod and a wildcard

---

### Step 9 - Create simple backup script

Commands used:

```bash
nano backup.sh
chmod +x backup.sh
./backup.sh
```

Script content:

```bash
#!/bin/bash

mkdir backup
cp *.txt backup/

echo "Backup completed"
```

Result:
- Created backup directory and copied text files automatically

Lesson:
- Bash scripting can automate administrative tasks

---

## Key Understanding

- Bash scripting automates Linux tasks
- Scripts can execute multiple commands
- Variables store reusable information
- Conditions and loops increase script flexibility
- Bash scripting is important for Linux administration and DevOps

