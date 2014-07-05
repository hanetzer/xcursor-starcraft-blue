XCURSORGEN=xcursorgen
CURSOR=left_ptr
CONFIG=$(CURSOR).config

all:
	mkdir cursors
	$(XCURSORGEN) $(CONFIG) cursors/$(CURSOR)

clean:
	rm -rf cursors