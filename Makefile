# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 20 January 2023
# Last Modified: Friday 20 January 2023, 17:10
# Edit Time: 0:09:08
# Description:
#
# Copyright: (C) 2023 Olivier Sirol <czo@free.fr>

all: firefox
	@echo "<- all done!"

firefox: src/firefox/manifest.json
	cd src/firefox ; web-ext build
	@echo "<- firefox done!"

clean:
	rm -fr src/firefox/web-ext-artifacts
	@echo "<- clean done!"

.PHONY: all clean

