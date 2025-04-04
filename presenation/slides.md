---
theme: cybertopia
header: <img src="img/knowit-logo.svg" width=75>
footer: 'Alexander Reinthal, FFT 2025-04-09'
class: invert
backgroundImage: ./img/background.png
paginate: true
marp: true
---

![bg](https://i.imgur.com/jBB1vtZ.jpeg)
# **Build Your Own Cloud**

Using Proxmox Hypervisor

---
# 

`$ whoami`

Alexander Reinthal
Data Platform Engineer
Loves Tomato Soup
Loves Birds

Recently Obsessed with 
Fast Chess & Counter-Strike 2

---

## What is the Cloud?

"The cloud is someone else's computer"

![bg](https://e3.365dm.com/21/01/768x432/skynews-emotet-computer-cyber_5252028.png)

---
## Datacenter designs


---

### The SAN era (1990s-2000s)

- SAN: Storage Area Network

Storage `<->` network `<->` Machines

- **Advantage**: Backups, Disaster Recovery, Easily swap drives with zero downtime.
- **Disadvantage**: Very Complex, difficult to scale, significant investment

---
### The Converged Era (2000s-2010s)

- Pre-engineered bundles of compute, networking and storage
- Advantage: Better scalability of the SAN design.


---
### The Hyperconverged Era (2010s-Today)

With the rise of virtualization, data center design became "hyperconverged".

- Software Defined Storage, Network & Compute.
- Lets practitioners focus less on hardware

---
# What Enabled Hyperconvergence?

- Improved virtualization technology
- Infrastructure as Code technologies
- Distributed file systems and object storage

---

## What Computer Resources do we typically need?

- **Execution Environment**: Run the code. VMs, Containers, Lambdas. 
- **Networking**: Computers need to talk to other Computers
- **Storage**: Object Storage, Volumes, Network shares, Sharepoint?

---
## What are other nice-to-haves?


- Backups
- Identities, who is running the code?
- Applications: Databases, Caches, lambdas, pubsub etc.

---

# What is the Public Cloud?

UI `<->` API `<->` Resource Backend

- Networking
- Compute
- Storage
- Backups, Geo-redundancy, Serverless, Applications etc.

---
# What is Proxmox?

<img src="img/proxmox.png">

Hyperconverged Infrastructure 
on commodity hardware

---

# What does proxmox provide?

- Networking
- Storage
- VMs
- Linux Containers (LXC)

---
<img src="https://i.imgflip.com/9pnocy.jpg" title="made by alexander Reinthal" class="center-image"/>

---

# Networking


---
## Routing

**Hardware**: 4x Gigabit LAN, Quad Core CPU
**Operating System**: PfSense

<img src="https://teklager.se/media/filer_public_thumbnails/filer_public/6f/62/6f6257bb-9bb0-44f7-9407-3c1c7f1c96d1/2_2_apu4_pxl_20230106_112033200_2apu4_.jpg__900x900_q85_crop_subsampling-2.jpg" title="made by alexander Reinthal" width=300 height=300/>


---
## Switches

**Hardware**: VLAN compatible switches 
**Price**: Free <3 Invativa


---

# Physical Servers

- `pve`,i3 4-cores 9th gen, 64GB RAM
- `pvd`,i7 4-cores 7th gen, 32GB RAM 
- `pvc`,i7 16-cores 14th gen, 96GB RAM


---

# Storage

- Mirrored zfs ssd-drives

---
# Demo

Let's test our hyperconverged  "cloud compute" platform!

- Networking ✅
- Storage ✅
- Compute ✅
---

<video src="./video/proxmox-ui.mkv" controls width="100%"></video>

---

<video src="./video/sdn.mkv" controls width="100%"></video>

---

<video src="./video/live-migration.mkv" controls width="100%"></video>

--- 

<video src="./video/ransomware.mkv" controls width="100%"></video>

---
# Limitations of DIY-cloud

- Proxmox supports only up to 1000s nodes per cluster.
- Nodes need < 5ms ping time, multi-site failover not easy.
- No official tofu/terraform provider.

---

# Summary