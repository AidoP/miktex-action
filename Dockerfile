FROM voidlinux/masterdir-x86_64:20200607RC01
RUN xbps-install -Syu xbps
RUN xbps-install -y tectonic
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]