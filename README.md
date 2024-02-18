# Oricutron to do unit test with Orix

Add this to github action step :

      - name: Unit-test with oricutron
        run: |
          git clone https://github.com/orix-software/docker-unit-test.git
          cd docker-unit-test && bash install.sh ${GITHUB_WORKSPACE} && cd ..
          # COPY WHATEVER YOU WANT INTO  ${GITHUB_WORKSPACE}/oricutron/sdcard/bin (binary for example)
          #ex :
          cp mybin ${GITHUB_WORKSPACE}/oricutron/sdcard/bin
          #copy your submit script (test) to AUTOBOOT
          #ex :
          cat  tests/unit-tests/commands.sub > ${GITHUB_WORKSPACE}/oricutron/sdcard/ETC/AUTOBOOT
          cd ${GITHUB_WORKSPACE}/oricutron
          timeout --preserve-status 10 ./xvfb.sh || exit 0

      - name: Check unit-test
        run: |
          ls -l ${GITHUB_WORKSPACE}/oricutron/sdcard/
          # Use a real linux bash script to test what you want (for example, the output of a command wrote in autoboot)
          bash tests/unit-tests/verify.sh ${GITHUB_WORKSPACE}/oricutron/sdcard/
