FROM gambtho/azurecli_terraform@sha256:cf565a6e2356af163b4797c35811d53d16c7cc0e674391ca8725d1910fe59adc # latest

COPY . /action

ENTRYPOINT ["/action/entrypoint.sh"]
