#!/bin/sh

# Utilise le container trzeci/emscriptem pour builder avec emcc

sudo docker run --rm -v $(pwd):/src trzeci/emscripten emcc -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' fibonacci.c