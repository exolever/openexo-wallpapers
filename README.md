# wallpaperExO

This PPA allows you to add several wallpapers with the OpenExo logo

**Adding this PPA to your system:**

        sudo add-apt-repository ppa:openexo/openexo-wallpapers
        sudo apt-get update
        sudo apt install openexo-wallpaper


[Link to launchpad hosting ](https://launchpad.net/~openexo/+archive/ubuntu/openexo-wallpapers)

**To insert a new imagen:**

1- To save the imagen in /usr/share/backgrounds/

2- To change the file /usr/share/gnome-background-properties/openexo-wallpapers.xml, you must add (you review the closing of labels):

         <wallpaper>
             <name>OpenExO (next number)</name>
             <filename>/usr/share/backgrounds/(name imagen).jpg</filename>
             <options>zoom</options>
             <pcolor>#000000</pcolor>
             <scolor>#000000</scolor>
             <shade_type>solid</shade_type>
         </wallpaper>

3- To changed the file debian/wallpaper-openexo.install and to add the new imagen:

        usr/share/backgrounds/example-imagen.jpg 

4- Add a new version in debian/changelog and a comment with the changes.