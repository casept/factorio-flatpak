#!/bin/sh
set -e

# This wrapper script is needed to make factorio write to the proper directories
# It works around the fact that factorio expect assets to be placed in /usr on "systemwide" installations,
# without a way to change the directory.

CONFIG_DIR=~/.factorio/config
CONFIG_FILE=$CONFIG_DIR/config.ini

# Check if config file exists, copy our custom one into place if it doesn't
if [ ! -f $CONFIG_FILE ]; then
	    mkdir -p $CONFIG_DIR
	    cp /app/factorio/config.ini $CONFIG_FILE
fi

# Launch the game
/app/factorio/bin/x*/factorio --config $CONFIG_FILE 
