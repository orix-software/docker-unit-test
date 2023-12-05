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
cd ${PATH_ORICUTRON}/oricutron
chmod +x xvfb.sh
