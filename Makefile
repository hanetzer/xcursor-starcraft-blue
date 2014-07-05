XCURSORGEN=xcursorgen
CURSOR=left_ptr
CONFIG=$(CURSOR).config

all: $(CURSOR)

$(CURSOR): $(CONFIG)
	mkdir cursors
	$(XCURSORGEN) $(CONFIG) cursors/$(CURSOR)

.config:
	$(CURSOR).config

clean:
	rm -rf cursors