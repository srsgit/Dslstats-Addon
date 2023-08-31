FROM krallin/ubuntu-tini:16.04

ENV LANG=C.UTF-8 \
TZ=Europe/London \
FIX_PERMISSIONS=true \
DISPLAY=:0 \
VNC_PASSWORD=CHANGEME

# Copy root filesystem
COPY root/ /
   
RUN chmod +x /root/*.sh && /bin/sh /root/install.sh

#Expose ports (VNC)
EXPOSE 5900 8080 55555

VOLUME /config
VOLUME /share
VOLUME /data
VOLUME /web

ENTRYPOINT ["/usr/local/bin/tini", "-g", "-v", "--", "/root/init.sh"]