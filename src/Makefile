XCURSORGEN=xcursorgen
SOURCES=left_ptr
CONFIG=$(SOURCES).config

all: cursor links

cursor:
	mkdir cursors
	$(XCURSORGEN) $(CONFIG) cursors/$(SOURCES)

links:
	$(MAKE) -C cursors -f ../Makefile.links

clean:
	rm -rf cursors