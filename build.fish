#!/usr/bin/fish
mkdir -p dist
cp www/* dist/
wasm-pack build --dev --target web --no-typescript --out-dir ./dist
wasm-strip dist/prefetch_rs_bg.wasm
wasm-opt -Os dist/prefetch_rs_bg.wasm -o dist/prefetch_rs_bg.wasm