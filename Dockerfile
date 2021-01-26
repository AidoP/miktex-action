FROM miktex/miktex

COPY entrypoint.sh /entrypoint.sh
COPY * /

ENTRYPOINT [ "/entrypoint.sh" ]