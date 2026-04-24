# 06 - Networking Basics

## Project Goal

Understand basic networking concepts in Linux and learn how to inspect network configuration and connectivity.

---

## What is Networking?

Networking allows systems to communicate with each other.

Important components:
- IP Address
- Subnet
- Gateway
- DNS

---

## Check IP Address

```bash
ip a
```

Displays all network interfaces and their IP addresses.

---

## Check Network Interfaces

```bash
ip link
```

Shows available network interfaces (e.g. eth0).

---

## Check Routing Table

```bash
ip route
```

Shows how traffic is routed.

---

## Test Connectivity (ping)

```bash
ping google.com
```

Checks if a remote host is reachable.

---

## DNS Resolution

```bash
nslookup google.com
```

or

```bash
dig google.com
```

Resolves domain names to IP addresses.

---

## Check Open Ports

```bash
ss -tuln
```

Displays all listening ports and active network services.

---

## What I Learned

- Networking is essential for system communication
- IP addresses identify devices in a network
- DNS resolves domain names to IP addresses
- Connectivity can be tested using ping
- Open ports show which services are running