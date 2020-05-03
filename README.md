# Rust wasm (web assembly) template

This is a simple rust and wasm template to help you getting started building rust web applications. It includes some handy features such as:

- `log!("hello world")` macro that makes it easier to log to the web console.
- `set_panic_hook()` function that catches panics inside your rust code.
- Build scripts inside `./scripts` with release optimizations, for a smaller wasm file `(24kb)`.
- A default spinner, that shows before the rust and javascript code have been downloaded.

Please follow the links at the bottom of this readme for more details about Rust as a language, and how to build wasm applications for the web using Rust.

## Dependencies

- rust
- rust wasm-pack
- fish shell
- wasm-strip
- wasm-opt

## Build

`./scripts/build`

## Release

`./scripts/build_release`

## Read more

- [Rust](https://www.rust-lang.org/)
- [Rust & Wasm](https://rustwasm.github.io/docs/book/reference/crates.html)
- [Wasm bindgen](https://rustwasm.github.io/docs/wasm-bindgen/)
- [Wasm pack](https://github.com/rustwasm/wasm-pack)
