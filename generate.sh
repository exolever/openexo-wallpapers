#!/bin/bash

rm openexo-wallpapers.xml

echo '<?xml version="1.0"?>' >> openexo-wallpapers.xml
echo '<!DOCTYPE wallpapers SYSTEM "gnome-wp-list.dtd">' >> openexo-wallpapers.xml
echo "<wallpapers>" >> openexo-wallpapers.xml

  for i in $(ls -C1 images)
  do
 	echo " <wallpaper>" >> openexo-wallpapers.xml
    echo "    <name>OpenExO $i</name>" >> openexo-wallpapers.xml
    echo "    <filename>/usr/share/backgrounds/$i </filename>" >> openexo-wallpapers.xml
    echo "    <options>zoom</options>" >> openexo-wallpapers.xml
    echo "    <pcolor>#000000</pcolor>" >> openexo-wallpapers.xml
    echo "    <scolor>#000000</scolor>" >> openexo-wallpapers.xml
    echo "    <shade_type>solid</shade_type>" >> openexo-wallpapers.xml
    echo " </wallpaper>" >> openexo-wallpapers.xml
  done

echo '</wallpapers>' >> openexo-wallpapers.xml

OLD_VERSION=$(head -1 debian/changelog | sed -e 's/.*(\(.*\)).*/\1/')

TAG=$(echo "${OLD_VERSION/[^.$\b]/}")
TAG=$(echo "${TAG/[^.$\b]/}")
TAG=$(echo "${TAG/[^$\b]/}")
TAG=$(echo "${TAG/[^$\b]/}")
TAG2="${OLD_VERSION:0:4}" # this catch the four first digit.
NEW_VERSION=$TAG2"$((TAG + 1))"

sed -i "1i \ " debian/changelog
sed -i "1i   \ -- Matilde Cabrera <matilde.cabrera@openexo.com>  $(date +'%a, %d %b %Y  %H:%M:%S') +0100"  debian/changelog
sed -i "1i \ " debian/changelog
sed -i "1i   \  * Add a new imagen."  debian/changelog
sed -i "1i \ " debian/changelog
sed -i "1i wallpaperexo ($NEW_VERSION) bionic; urgency=low"  debian/changelog