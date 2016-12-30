= NutsBoard Buildroot BSP

Environment Setup

[source,console]
% sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
 build-essential chrpath  socat \
 libsdl1.2-dev xterm  sed cvs subversion coreutils texi2html \
 docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils \
 libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc

For Ubuntu 12.04 host setup only:
[source,console]
% sudo apt-get install uboot-mkimage

For Ubuntu 14.04 or later revision host setup:
[source,console]
% sudo apt-get install u-boot-tools



To get the BSP you need to have repo installed and use it as:

Download the BSP source:

[source,console]
% git clone https://github.com/mayqueenEMBEDDED/buildroot.git
% cd buildroot
% git checkout 201608_4.4.19-1.1.0_ga


To generate the configure (ex: st7b2)
[source,console]
% make nutsboard_almond_defconfig
% make -j8


Output image files:

Output Path: <buildroot path>/output/images/

flashcard the card:
[source,console]
% sudo dd if=sdcard.img of=/dev/sdx bs=1M
NOTE: sdx is your device node

