# Makefile for Hello World program

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Target executable name
TARGET = confed-weather-station

# Source files
SRCS = main.c

# Object files (automatically generated from source files)
OBJS = $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean up generated files
clean:
	rm -f $(OBJS) $(TARGET)

