#!/bin/sh
cd maincpu
make anotherw/anotherworld_maincpu.rom
cd ../soundcpu
make anotherw/anotherworld_soundcpu.rom
cd ../videocpu
make anotherw/anotherworld_videocpu.rom

