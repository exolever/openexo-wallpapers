#!/bin/bash

# delete the last line of file, remember after closed with </wallpaper>
tail -n 1 "/usr/share/gnome-background-properties/bionic-wallpapers.xml" | wc -c | xargs -I {} truncate "/usr/share/gnome-background-properties/bionic-wallpapers.xml" -s -{}

echo "  <wallpaper>
     <name>OpenExO 1</name>
     <filename>/usr/share/backgrounds/wallpaper-exo-1.jpg</filename>
     <options>zoom</options>
     <pcolor>#000000</pcolor>
     <scolor>#000000</scolor>
     <shade_type>solid</shade_type>
 </wallpaper>
 <wallpaper>
     <name>OpenExO 2</name>
     <filename>/usr/share/backgrounds/wallpaper-exo-2.jpg</filename>
     <options>zoom</options>
     <pcolor>#000000</pcolor>
     <scolor>#000000</scolor>
     <shade_type>solid</shade_type>
 </wallpaper>
 <wallpaper>
     <name>OpenExO 3</name>
     <filename>/usr/share/backgrounds/wallpaper-exo-3.jpg</filename>
     <options>zoom</options>
     <pcolor>#000000</pcolor>
     <scolor>#000000</scolor>
     <shade_type>solid</shade_type>
 </wallpaper>
</wallpaper>" >> /usr/share/gnome-background-properties/bionic-wallpapers.xml

echo 'gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/wallpaper-exo-1.jpg"'
