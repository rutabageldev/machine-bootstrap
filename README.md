# 🛠️ machine-bootstrap
Scripts for bootstrapping new machines

A flexible, extensible toolkit for bootstrapping development machines — including WSL instances, VMs, and headless containers.

This repo automates the setup of common development environments by handling tasks like:

- Verifying base OS version
- Installing dependencies
- Generating SSH keys
- Cloning essential repositories
- Running `dev-setup` bootstrap script

---

## ✅ Supported Environments

| Target      | Status         | Entry Point                        |
|-------------|----------------|-------------------------------------|
| WSL         | ✅ Ready       | `wsl/bootstrap.sh`                 |
| VM          | 🛠️ Placeholder | `vm/bootstrap.sh` (planned)        |
| Container   | 🛠️ Placeholder | `container/bootstrap.sh` (planned) |

---

## 🚀 Quick Start (WSL)

### 1. Clone this repo:
```bash
git clone git@github.com:rutabageldev/machine-bootstrap.git ~/dev/bootstrap/machine-bootstrap
cd ~/dev/bootstrap/machine-bootstrap/wsl
```