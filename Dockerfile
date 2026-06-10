FROM mcr.microsoft.com/aks/github-actions/aks-create@sha256:e8aaf751c69633716edec0f43c66153298f845a028f0cd6dc2571a3d1d9597be # latest

COPY . /action

ENTRYPOINT ["/action/entrypoint.sh"]
