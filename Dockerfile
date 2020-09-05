FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  entrypoint.sh \
  setup.sh \
  main.py \
  /root/

RUN /root/setup.sh

ENTRYPOINT ["/root/entrypoint.sh"]
