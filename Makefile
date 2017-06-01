all:
	rm -rf factorio 
	flatpak-builder --repo=repo --ccache factorio com.factorio.factorio.json 
	flatpak build-bundle repo factorio.flatpak com.factorio.factorio
clean:
	rm -rf build repo factorio *.flatpak .flatpak-builder
install:
	flatpak install --user --bundle factorio.flatpak
uninstall:
	flatpak uninstall --user com.factorio.factorio
