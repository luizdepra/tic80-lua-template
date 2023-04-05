.PHONY: all build run

LUACC := luacc
TIC80 := tic80

PLATFORM := linux
GAME_NAME := mygame

BUILD_DIR := build
SRC_DIR := src

SOURCES := $(shell find ./src -type f -name "*.lua" | sed "s/^\.\///; s/\.lua$$//")

all: build

build:
	$(LUACC) -o game.lua -p 6 -i ./ main $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(TIC80) --fs . --cli --cmd="load game.lua & export $(PLATFORM) $(BUILD_DIR)/$(GAME_NAME) alone=1 & exit"

run:
	$(TIC80) --fs . --cmd="load main.lua"

test:
	echo "$(SOURCES)"
