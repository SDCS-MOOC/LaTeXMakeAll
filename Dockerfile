FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
