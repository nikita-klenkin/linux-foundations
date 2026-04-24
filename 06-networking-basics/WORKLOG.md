x   # Worklog - 06 Networking Basics

---

## 2026-04-21 - Networking Basics

### Goal

Understand basic networking concepts and inspect network configuration.

---

### Step 1 - Check IP address

Commands used:

```bash
ip a
```

Result: 
- Displayed network interfaces and assigned IP addresses

Lesson:
- Each device in a network has an IP address

---

### Step 2 - Check routing

Commands used:

```bash
ip route
```

Result:
- Displayed default gateway and routing paths

Lesson:
- Routing determines how traffic is sent to other networks

---

### Step 3 - Test connectivity

Commands used:

```bash
ping google.com
```

Result:
- Successfully received responses from remote host

Lesson:
- ping can be used to test network connectivity
- ping uses ICMP to test network connectivity

---

### Step 4 - DNS resolution

Commands used:

```bash
nslookup google.com
```

Result:
- Resolved domain name to IP address

Lesson:
- DNS translates domain names into IP addresses

---

### Step 5 - Check open ports

Commands used:

```bash
ss -tuln
```

Result:
- Displayed active listening ports

Lesson:
- Open ports indicate running network services

---

## Key Understanding

- IP addresses identify devices in a network
- Routing defines how traffic reaches other networks
- DNS resolves domain names to IP addresses
- ping is used to test network connectivity
- Open ports indicate which network services are listening