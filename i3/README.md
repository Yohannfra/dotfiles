# Memo for i3

## Fix the cursor bug on clion

In clion : <br>
    Help -> Edit Custom Properties ... <br>
    add this line : "suppress.focus.stealing=false" <br>
    Save and Restart <br>

## Fix Screen Brightness not working

To find the directory for the backlight settings: <br>
```shell
sudo find /sys/ -type f -iname '*brightness*'
```

The output should give you something like this: <br>
```shell
/sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-LVDS-1/intel_backlight/brightness
```
now, all you have to do is link it to /sys/class/backlight : <br>
```shell
sudo ln -s /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-LVDS-1/intel_backlight  /sys/class/backlight
```
If you still get the error, then do this: <br>
```shell
sudo nano /etc/X11/xorg.conf
```
And add these lines: <br>
```
  Section "Device"
        Identifier  "Intel Graphics"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
    EndSection
```

## Install i3lock-fancy

[i3lock-fancy github page](https://github.com/meskarune/i3lock-fancy)

## Install i3-gaps

[i3-gaps wiki installation page](https://github.com/Airblader/i3/wiki/Installation)

## Install rofi
[rofi wiki installation page](https://github.com/davatorium/rofi/blob/next/INSTALL.md)

## Install fontawesome
```
pip install fontawesome --user
```

## Dependencies

- blueman-applet (bluetooth manager in status bar)
- nm-applet (wifi manager in status bar)
- gnome-screenshot (screenshot application)
- fontawesome (font used by my bar)
- rofi (a dmenu replacement)

## Appearence

Widget: <br>
- Flat-Remix-GTK-Green-Dark-Solid <br>

Icon Theme: <br>
- Flat-Remix <br>

Mouse Cursor: <br>
- Paper <br>