FROM miktex/miktex

# COPY entrypoint.sh /entrypoint.sh
COPY * /

RUN groupadd -r miktex && useradd --no-log-init -r -g miktex -d /miktex miktex && chown miktex:miktex /miktex
USER miktex:miktex
ENTRYPOINT [ "/entrypoint.sh" ]