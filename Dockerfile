FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y xvfb
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libsdl1.2debian libsdl2-dev

COPY oricutron /root
COPY oricutron.cfg /root
COPY roms/ /root/roms/
COPY images/ /root/images/
COPY plugins/ /root/plugins/
COPY orix_keymap /root
COPY SDCARD/ /root/SDCARD

COPY xvfb.sh /root

RUN chmod +x /root/xvfb.sh

#CMD /root/xvfb.sh

