FROM miktex/miktex


# RUN cat miktex

RUN mkdir miktex && groupadd -r miktex && useradd --no-log-init -r -g miktex -d /miktex miktex && chown miktex:miktex /miktex
COPY --chown=miktex:miktex * /miktex/
RUN chmod -R 777 /miktex/
USER miktex:miktex
WORKDIR /miktex
COPY --chown=miktex:miktex entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]