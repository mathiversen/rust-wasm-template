#!/usr/bin/fish

set WASM_FILE "rust_wasm_template_bg.wasm"
set DIR "dist"

cargo build
mkdir -p $DIR
cp www/* $DIR/
wasm-pack build --dev --target web --no-typescript --out-dir ./$DIR