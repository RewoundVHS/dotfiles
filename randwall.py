#! /usr/bin/env python3

# Dependencies: python-pywal
# This is useless, pywal will select a random
# wallpaper if you point it at a directory.
# Regardless, this was a fun experiment

import os
import random
import pwd

home = pwd.getpwuid(os.getuid()).pw_dir
wallDir = home + '/Pictures/Wallpapers/'

randWall = wallDir + random.choice(os.listdir(wallDir))

setWall = 'wal -i ' + randWall
os.system(setWall)
