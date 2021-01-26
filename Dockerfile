FROM pandoc/latex

# COPY entrypoint.sh /entrypoint.sh
COPY * /

ENTRYPOINT [ "/entrypoint.sh" ]