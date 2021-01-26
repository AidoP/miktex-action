FROM miktex/miktex

# COPY entrypoint.sh /entrypoint.sh

# RUN cat miktex

RUN mkdir miktex && groupadd -r miktex && useradd --no-log-init -r -g miktex -d /miktex miktex && chown miktex:miktex /miktex
USER miktex:miktex
COPY --chown=miktex:miktex * /miktex/
WORKDIR /miktex
ENTRYPOINT [ "/entrypoint.sh" ]