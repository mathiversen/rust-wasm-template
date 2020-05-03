#!/usr/bin/fish

set WASM_FILE "rust_wasm_template_bg.wasm"
set DIR "dist"

cargo build --release
mkdir -p $DIR
cp www/* $DIR/
wasm-pack build --release --target web --no-typescript --out-dir ./$DIR

# Optimizations
wasm-strip $DIR/$WASM_FILE
wasm-opt -Os $DIR/$WASM_FILE -o $DIR/$WASM_FILE