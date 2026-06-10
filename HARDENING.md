<!-- markdownlint-disable -->

# Hardening Report: azure--aks-create-action/1.2

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **azure--aks-create-action/1.2** was hardened automatically. 0 finding(s) were identified and resolved across 1 iteration(s).

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image `mcr.microsoft.com/aks/github-actions/aks-create` to its SHA256 digest `sha256:e8aaf751c69633716edec0f43c66153298f845a028f0cd6dc2571a3d1d9597be` (with `# latest` comment for readability). This eliminates the mutable tag reference that could be exploited in a supply-chain attack.

