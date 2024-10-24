#! /bin/bash

PATH_ORICUTRON=$1


echo  PATH_ORICUTRON : ${PATH_ORICUTRON}

cp roms/*.rom ${PATH_ORICUTRON}/oricutron/roms
cp oricutron.cfg ${PATH_ORICUTRON}/oricutron/
cp orix_keymap ${PATH_ORICUTRON}/oricutron/
cp plugins/twilighte_board/twilighte.cfg ${PATH_ORICUTRON}/oricutron/plugins/twilighte_board/
echo "export SDL_AUDIODRIVER=dummy" > xvfb.sh
echo "xvfb-run ./oricutron" >> xvfb.sh
sudo apt-get update && sudo apt-get install -y xvfb libgtk-3-0 libgtk-3-dev libsdl1.2debian libsdl1.2-dev wget
cp xvfb.sh ${PATH_ORICUTRON}/oricutron
chmod +x ${PATH_ORICUTRON}/oricutron/xvfb.sh
mkdir ${PATH_ORICUTRON}/oricutron/sdcard/BIN/ -p
cp SDCARD/BIN/SUBMIT ${PATH_ORICUTRON}/oricutron/sdcard/BIN/
wget http://repo.orix.oric.org/dists/official/tgz/6502/submit.tgz
echo Untargz submit
tar xfz submit.tgz
cp bin/submit ${PATH_ORICUTRON}/oricutron/sdcard/BIN/SUBMIT
wget http://repo.orix.oric.org/dists/official/tgz/6502/shell.tgz
echo Untargz shell
tar xfz shell.tgz
echo "Copy Shell rom to Oricutron Pat ${PATH_ORICUTRON}/oricutron/roms/shell.rom"
ls -l  usr/share/shell/
echo Copying 1
ls -l ${PATH_ORICUTRON}/oricutron/
echo copying 2
ls -l ${PATH_ORICUTRON}/oricutron/roms
echo copying 3
ls -l usr/share/shell/shellsd.rom
echo copying 4
ls -l ${PATH_ORICUTRON}/oricutron/roms/shell.rom

echo copying 5
cp usr/share/shell/shellsd.rom ${PATH_ORICUTRON}/oricutron/roms/shell.rom
echo copying 6
ls -l ${PATH_ORICUTRON}/oricutron/sdcard/
echo copying 6b
ls -l ${PATH_ORICUTRON}/oricutron/sdcard/ETC/
echo copying 7
mkdir -p ${PATH_ORICUTRON}/oricutron/sdcard/ETC/ 

