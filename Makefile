all:
	rm -rf factorio
	flatpak-builder --repo=repo --ccache factorio com.factorio.factorio.json
