#!/usr/bin/fish

set WASM_FILE "wasm_rust_template_bg.wasm"
set DIR "dist"

mkdir -p $DIR
cp www/* $DIR/
wasm-pack build --dev --target web --no-typescript --out-dir ./$DIR

# Optimizations
wasm-strip $DIR/$WASM_FILE
wasm-opt -Os $DIR/$WASM_FILE -o $DIR/$WASM_FILE