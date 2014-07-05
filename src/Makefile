XCURSORGEN=xcursorgen
SOURCES=left_ptr
CONFIG=$(SOURCES).config

all: cursor links

cursor:
	mkdir cursors
	$(XCURSORGEN) $(CONFIG) cursors/$(SOURCES)

links:
	cd cursors/; \
	ln -s left_ptr top_left_arrow

clean:
	rm -rf cursors