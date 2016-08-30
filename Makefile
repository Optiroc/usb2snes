BIN_DIR     := bin
BINARY      := $(BIN_DIR)/usb2snes

.PHONY: clean

default: $(BINARY)

all: clean $(BINARY)

OBJS = usb2snes.c gopt.c

$(BINARY): $(OBJS)
	@mkdir -pv $(dir $@)
	gcc -Os -Wall $(OBJS) -o $@

clean:
	@rm -rf $(BIN_DIR)
