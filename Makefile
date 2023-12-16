# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 20 January 2023
# Last Modified: Saturday 16 December 2023, 21:11
# Edit Time: 0:19:21
# Description:
#
# Copyright: (C) 2023 Olivier Sirol <czo@free.fr>

all: firefox chromium
	@echo "<- all done!"

firefox: src/firefox/manifest.json
	rm -fr src/firefox/web-ext-artifacts
	cd src/firefox ; web-ext build
	@echo "<- firefox done!"

chromium: src/chromium/manifest.json
	rm -f  src/chromium/Cached\ Theme.pak
	rm -fr src/chromium/web-ext-artifacts
	cd src/chromium ; web-ext build
	@echo "<- chromium done!"

clean:
	rm -fr src/firefox/web-ext-artifacts
	rm -fr src/chromium/web-ext-artifacts
	rm -f  src/chromium/Cached\ Theme.pak
	@echo "<- clean done!"

.PHONY: all clean

