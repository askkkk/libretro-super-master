#!/bin/bash

set -e

BASE_DIR="$PWD"
RARCH_DIR=$BASE_DIR/dist
RARCH_DIST_DIR=$RARCH_DIR/ios
FORMAT=_ios
FORMAT_COMPILER_TARGET=ios
FORMAT_COMPILER_TARGET_ALT=ios
FORMAT_EXT=dylib
JOBS=7
MAKE=make
CXX11="clang++ -std=c++11 -stdlib=libc++ -miphoneos-version-min=5.0"
IOS=1

export IOSSDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.0.sdk/

. ./libretro-build-common.sh

if [ $1 ]; then
   $1
else
   build_libretro_bsnes_cplusplus98
   build_libretro_bsnes
   build_libretro_mednafen
   build_libretro_mednafen_gba
   #build_libretro_mednafen_snes
   build_libretro_mednafen_psx
   build_libretro_s9x
   build_libretro_s9x_next
   build_libretro_genplus
   build_libretro_fba_full
   build_libretro_vbam
   build_libretro_vba_next
   build_libretro_fceu
   build_libretro_gambatte
   #build_libretro_meteor
   build_libretro_nx
   build_libretro_prboom
   build_libretro_stella
   build_libretro_quicknes
   build_libretro_nestopia
   build_libretro_tyrquake
   build_libretro_mame078
   #build_libretro_mame
   #build_libretro_dosbox
   build_libretro_scummvm
   build_libretro_picodrive
   build_libretro_handy
   build_libretro_desmume
   build_libretro_pcsx_rearmed
   build_libretro_pcsx_rearmed_interpreter
   build_libretro_modelviewer
   build_libretro_scenewalker
   build_libretro_instancingviewer
   build_libretro_instancingviewer_camera
   build_libretro_mupen64
   #build_libretro_ffmpeg
   build_libretro_dinothawr
fi
