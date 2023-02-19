#!/usr/bin/env python

import os
import datetime

def change_wallpaper():
        hour = datetime.datetime.now().hour
    if hour >= 6 and hour < 12:
                wallpaper = "/home/lukas/Pictures/wallpaper/morning.png"
    elif hour >= 12 and hour < 18:
                wallpaper = "/home/lukas/Pictures/wallapper/afternoon.png"
    elif hour >= 18 and hour < 22:
                wallpaper = "/home/lukas/Pictures/wallpaper/evening.png"
    else:
                 wallpaper = "/home/lukas/Pictures/wallpaper/night.png"
    os.system("feh --bg-fill {}".format(wallpaper))
    os.system("pkill -USR1 feh")

if __name__ == "__main__":
        change_wallpaper()
