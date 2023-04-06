# TIC-80 Lua Template

This is a template project to build TIC-80 games with Lua, using multi-files. Which means you can organize, develop and test your game with separed Lua files, and build it together to release a cartridge.

## Requirements

To use this template you will need:

- Linux or macOS (it probably works on Windows with MinGW or WSL)
- GNU Make
- TIC-80 PRO (consider buying the PRO version or sponsoring @nesbox)
- Lua
  - luarocks
  - luacc

## Using

Use the `main.lua` as your base cartridge file to add and edit assets.

You code files must go inside the `src` folder. Then, you need require them inside the `main.lua` file.

Notes:

- It should not be necessary to add them in the `luacc` line inside the `Makefile`.
- You may need to edit some varibles like `PLATFORM` and `GAME_NAME` inside the `Makefile`.

### Runing

To run and test your game:

```
make run
```

### Building

To build your game:

```
make build
```

## Acknowledgment

- [@nesbox](https://github.com/nesbox): the [TIC-80](https://tic80.com/) creator.
- [@borbware's tic80-boilerplate](https://github.com/borbware/tic80-boilerplate): I used this repository as base to build this template.
