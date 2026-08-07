# System and Server Management

## Overview

**System and Server Management (SASM)** is a Linux system administration project focused on configuring, securing, and managing a server environment.  
This repository contains documentation, configuration examples, and exercises related to core server administration tasks such as SSH hardening, locale setup, kernel tuning, mail system configuration, AppArmor security policies, and Git usage.

## Project Goals

The goal of this project is to practice and document real-world server administration tasks, including:

- Configuring system services and startup settings
- Securing remote access with SSH
- Managing users and SSH key authentication
- Adjusting system locale settings
- Editing kernel parameters with `sysctl`
- Working with application security profiles using AppArmor
- Understanding mail server configuration with Postfix
- Maintaining system-specific configuration files
- Using Git for version control and exercise tracking

## Repository Contents

This repository includes documentation and reference files for several system management tasks:

### Git Configuration and Exercises
- Initialization of Git inside system directories
- Global Git configuration
- `.gitignore` setup
- Commit history tracking

### SSH Configuration and Security
- SSH daemon configuration
- Custom SSH port setup
- Systemd socket activation handling
- SSH key-based authentication
- User creation and access configuration
- Brute-force mitigation using `sshguard`

### Locale Configuration
- Locale generation
- Setting default language and regional formats
- Updating system locale settings

### Sysctl Configuration
- Managing kernel parameters
- Using `/etc/sysctl.d/` for persistent system tuning
- Applying changes at boot and runtime

### AppArmor
- Reviewing and extending security profiles
- Managing application confinement rules
- Working with local overrides and package-specific profiles

### Postfix
- Reference configuration for mail server settings
- Understanding relay, alias, and address rewriting options

### Terminfo
- System-local terminal capability definitions

## Technologies Used

- Linux / Debian-based system administration
- Bash / Shell
- Git
- SSH
- systemd
- AppArmor
- Postfix
- sysctl

## What I Learned

This project helped build practical knowledge in:

- Server setup and maintenance
- Secure remote login configuration
- Linux file and permission management
- System service control
- Security-focused administration
- Version control workflow

## Repository Structure

The repository is organized into topic-based folders such as:

- `ssh/`
- `default/`
- `sysctl.d/`
- `apparmor.d/`
- `postfix/`
- `terminfo/`

Each folder contains documentation or configuration-related material for the corresponding system component.

## Conclusion

This repository serves as a collection of system administration exercises and notes for managing and securing Linux servers. It documents the steps taken to configure important system services and supports further learning and review.
