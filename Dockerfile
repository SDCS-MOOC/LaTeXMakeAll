FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  entrypoint.sh \
  main.py \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
