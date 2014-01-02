#!/bin/bash

SCRIPT=$(readlink -f $0)
BASE_DIR=$(dirname $SCRIPT)
RARCH_DIR=$BASE_DIR/dist
RARCH_DIST_DIR=$RARCH_DIR/ngc
FORMAT=_ngc
FORMAT_COMPILER_TARGET=ngc
FORMAT_COMPILER_TARGET_ALT=ngc
FORMAT_EXT=a
JOBS=7
MAKE=make

. ./libretro-build-common-gx.sh
. ./libretro-build-common.sh

if [ $1 ]; then
   $1
else
   build_libretro_mednafen
   build_libretro_s9x_next
   build_libretro_genplus
   build_libretro_fba
   build_libretro_vba_next
   build_libretro_fceu
   build_libretro_gambatte
   build_libretro_nx
   build_libretro_prboom
   build_libretro_quicknes
   build_libretro_nestopia
   build_libretro_tyrquake
fi
