CC: gcc
CFLAGS: -Wall -Wextra -O2

SRC_DIR = src
BIN_DIR = bin

SRC = $(SRC_DIR)/main.c
BIN = $(BIN_DIR)/app

all: $(OUT)

$(OUT): $(SRC) | $(BIN_DIR)
	$(CC) $(CFLAGS) $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)
	@echo "$(BIN_DIR) build complete!"

clean:
	rm -f $(OUT)
	@echo "Build file cleaned!"

.PHONY: clean
