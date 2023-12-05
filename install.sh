#! /bin/bash

PATH_ORICUTRON=$1

echo  PATH_ORICUTRON : ${PATH_ORICUTRON}

cp roms/*.rom ${PATH_ORICUTRON}/oricutron/roms
cp oricutron.cfg ${PATH_ORICUTRON}/oricutron/
cp orix_keymap ${PATH_ORICUTRON}/oricutron/
cp plugins/twilighte_board/twilighte.cfg ${PATH_ORICUTRON}/oricutron/plugins/twilighte_board/
echo "export SDL_AUDIODRIVER=dummy" > xvfb.sh
echo "xvfb-run ./oricutron" >> xvfb.sh
sudo apt-get install -y xvfb libgtk-3-0 libgtk-3-dev libsdl1.2debian libsdl1.2-dev
cp xvfb.sh ${PATH_ORICUTRON}/oricutron
chmod +x ${PATH_ORICUTRON}/oricutron/xvfb.sh
mkdir ${PATH_ORICUTRON}/oricutron/sdcard/BIN/ -p
cp SDCARD/BIN/SUBMIT ${PATH_ORICUTRON}/oricutron/sdcard/BIN/
mkdir ${PATH_ORICUTRON}/oricutron/sdcard/ETC/ -p
