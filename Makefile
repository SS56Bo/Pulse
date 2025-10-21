CC = gcc
CFLAGS = -Wall -Wextra -O2

SRC_DIR = src
BIN_DIR = bin

SRC = $(SRC_DIR)/main.c
OUT = $(BIN_DIR)/app

#default rule
all: $(OUT)

#link and compile
$(OUT): $(SRC) | $(BIN_DIR)
	$(CC) $(CFLAGS) $< -o $@

#create binary directory if it doesn't exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)
	@echo "$(BIN_DIR) build complete!"

#clean all build files
clean:
	rm -f $(OUT)
	@echo "Build file cleaned!"

.PHONY: all clean
