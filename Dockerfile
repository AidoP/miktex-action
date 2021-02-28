FROM voidlinux

RUN xbps-install -Sy tectonic
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]