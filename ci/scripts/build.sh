#!/bin/bash
set -e

# for file in `find "${ADVPLC_SRCDIR}" -iname '*.prw' \
#     -or -iname '*.prx' \
#     -or -iname '*.prg' \
#     -or -iname '*.apw' \
#     -or -iname '*.aph' \
#     -or -iname '*.tres' \
#     -or -iname '*.png' \
#     -or -iname '*.bmp' \
#     -or -iname '*.res' \
#     -or -iname '*.apl' \
#     -or -iname '*.tlpp' \
#     -or -iname '*.4gl' \
#     -or -iname '*.per' \
#     -or -iname '*.msg' \
#     -or -iname '*.ahu'`; do
#     echo -n "${file};"
# done > /sources.lst

docker run --rm -it \
-v ${PWD}/src:/tmp/compile \
-v ${PWD}/protheus/includes:/tmp/includes \
-v ${PWD}/protheus/appserver.ini:/opt/totvs/appserver/appserver.ini \
-v ${PWD}/protheus/apo/:/opt/totvs/protheus/apo/ \
totvsengpro/appserver-dev \
./appsrvlinux -compile -env=environment -files=/tmp/compile -includes=/tmp/includes