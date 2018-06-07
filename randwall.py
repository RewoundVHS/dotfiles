#! /usr/bin/env python3

# Dependencies: python-pywal

import os
import random
import pwd

home = pwd.getpwuid(os.getuid()).pw_dir
wallDir = home + '/Pictures/Wallpapers/'

randWall = wallDir + random.choice(os.listdir(wallDir))

setWall = 'wal -i ' + randWall
os.system(setWall)
