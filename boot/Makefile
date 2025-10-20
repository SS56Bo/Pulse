ASM = nasm
ASMFLAGS = -f bin

SRC = src/bootloader.asm 
BUILD = build 
TARGET = $(BUILD)/boot.img

all: $(TARGET)

$(TARGET): $(SRC) | $(BUILD)
	$(ASM) $(ASMFLAGS) -o $< $@
	@echo "Built $(TARGET)"

$(BUILD):
	mkdir -p $(BUILD)

clean:
	rm -rf $(BUILD)
	@echo "Cleaned Build Directory"
