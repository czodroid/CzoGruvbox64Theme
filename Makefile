# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 20 January 2023
# Last Modified: Saturday 16 December 2023, 11:12
# Edit Time: 0:17:07
# Description:
#
# Copyright: (C) 2023 Olivier Sirol <czo@free.fr>

all: firefox

firefox: src/firefox/manifest.json
	cd src/firefox ; web-ext build
	@echo "<- firefox done!"

chromium:
	@echo "On your browser, go to chrome://extensions/"
	@echo "Developer mode: ON"
	@echo "Load unpacked"
	@echo ";-)"

clean:
	rm -fr src/firefox/web-ext-artifacts
	rm -f  src/chromium/Cached\ Theme.pak
	@echo "<- clean done!"

.PHONY: all clean

