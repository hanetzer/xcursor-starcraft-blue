XCURSORGEN=xcursorgen
CURSOR=left_ptr
CONFIG=$(CURSOR).config

all: $(CURSOR)

$(CURSOR): $(CONFIG)
	mkdir cursors
	$(XCURSORGEN) $(CONFIG) cursors/$(CURSOR)

clean:
	rm -rf cursors