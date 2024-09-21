#!/bin/sh
(
echo "10" ; sleep 1
echo "# Extrallendo" ; sleep 1
echo "20" ; sleep 1
echo "# Ejecutando" ; sleep 1
echo "50" ; sleep 1
echo "# Recolectando informacion" ; sleep 1
echo "75" ; sleep 1
echo "# Exfiltrando" ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  --title="script DEMO" \
  --text="Posible Ransom" \
  --percentage=0 \
  --auto-close

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi

