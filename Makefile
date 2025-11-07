CC ?= cc
CFLAGS ?= -Wall -Wextra -O2
TARGET ?= hello
SRC := file.c

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $<

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

