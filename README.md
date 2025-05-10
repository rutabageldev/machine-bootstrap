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
cd ~/dev/bootstrap/machine-bootstrap/
```

### 2. Run target Bootstrap:
For WSL:
```bash
bash wsl/bootstrap.sh
```

### 3. Preload Config (Optional)
Instead of using interactive prompts, you can preload values:

- For WSL:
```bash
cp wsl/config.env.example wsl/config.env
```

Edit `config.env` to customize Github username, email, repo URls, etc..

## 📁 Repository Structure
```bash
machine-bootstrap/
├── wsl/           # WSL-specific provisioning
├── vm/            # VM provisioning (coming soon)
├── container/     # Container provisioning (coming soon)
├── scripts/       # Shared helper scripts (e.g., logging, prompts)
├── test/          # Shell linting or validation (optional)
├── docs/          # Internal documentation, diagrams, etc.
└── README.md      # This file
```

## 📌 Requirements
- Ubuntu 22.04 (or matching your config)
- Internet access
- GitHub account for SSH key registration

## 🧠 Roadmap
- [x] WSL setup support
- [ ] VM setup support
- [ ] Container-friendly minimal bootstrap
- [ ] Shared logging and prompt utilities
- [ ] GitHub CLI or OAuth-based SSH automation