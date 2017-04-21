# factorio-flatpak    

A flatpak package for the game factorio by wube software. Requires game tarball downloaded from factorio's official site (not the steam version!).     

## Building     
First checkout the repo:     
```
git clone https://github.com/casept/factorio-flatpak     
cd factorio-flatpak   
```

Install the needed runtime and SDK:        
```
flatpak remote-add --user --if-not-exists --from gnome https://sdk.gnome.org/gnome.flatpakrepo       
flatpak install --user gnome org.freedesktop.Sdk 1.4      
flatpak install --user gnome org.freedesktop.Platform 1.4          
```
Place a .tar.gz of version 0.14.22 of the game into the directory (It should be named `factorio-0.14.22.tar.gz`).     
Then run `make`. This will create a `.flatpak` file in the directory, which contains the game.     

## Installation      
Just run `make install`. This will install the game for your local user.     

## Running        
In most desktop environments a factorio menu entry will have been created under games. If that's not the case you may need to log out and back in again. If you still can't find the icon your DE might not be looking in the directory where flatpak places .desktop files. If that's the case you'll have to run `flatpak run com.factorio.factorio` to start the game.

## Accessing save games/mods/etc.
For sandboxing reasons the game is configured to save user data to `~/.var/app/com.factorio.factorio/.factorio` instead of the usual `~/.factorio`. This directory will have the same structure as it does when the game is installed systemwide by normal means.
