ASM = nasm
ASMFLAGS = -f bin

SRC = src/bootloader.asm
BUILD = build
TARGET = $(BUILD)/boot.img

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC) | $(BUILD)
	@command -v $(ASM) >/dev/null 2>&1 || { echo >&2 "NASM not found! Install it first."; exit 1; }
	$(ASM) $(ASMFLAGS) -o $@ $<
	@echo "Built $(TARGET)"

$(BUILD):
	mkdir -p $(BUILD)

clean:
	rm -rf $(BUILD)
	@echo "Cleaned Build Directory"
