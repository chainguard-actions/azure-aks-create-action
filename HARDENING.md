# Hardening Report: azure--aks-create-action/1.1

> This file was generated automatically by the hardening agent.

**Policy SHA:** `ff50f15e4b79bfbf764dafdfd2579175a6ea9771`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **azure--aks-create-action/1.1** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile uses a mutable base image tag `FROM gambtho/azurecli_terraform:latest` instead of a SHA digest. This means the build can silently pull a different (potentially malicious) image on each run, creating a supply-chain risk. The image reference should be pinned to a specific SHA256 digest, e.g. `FROM gambtho/azurecli_terraform@sha256:<64-hex-char-digest>`.

Locations:

- `Dockerfile:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image `gambtho/azurecli_terraform:latest` to its immutable SHA256 digest (`sha256:cf565a6e2356af163b4797c35811d53d16c7cc0e674391ca8725d1910fe59adc`). The original tag is preserved as a comment. This prevents supply-chain attacks from a silently replaced mutable image tag.

