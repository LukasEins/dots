#!/usr/bin/env python

import os
import time

# Define the path to your wallpaper directory
WALLPAPER_DIR = '/home/lukas/Pictures/wallpaper/'

# Define the wallpaper images for each time of day
WALLPAPERS = {
    'morning': 'morning.jpg',
    'afternoon': 'afternoon.png',
    'evening': 'evening.jpg',
    'night': 'night.png'
}

# Get the current time of day
hour = time.localtime().tm_hour

if 5 <= hour < 12:
    wallpaper = WALLPAPERS['morning']
elif 12 <= hour < 18:
    wallpaper = WALLPAPERS['afternoon']
elif 18 <= hour < 22:
    wallpaper = WALLPAPERS['evening']
else:
    wallpaper = WALLPAPERS['night']

# Set the wallpaper using feh
os.system(f"feh --bg-scale {WALLPAPER_DIR}/{wallpaper}")

