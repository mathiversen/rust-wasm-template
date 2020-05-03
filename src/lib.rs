use wasm_bindgen::prelude::*;

mod utils {
    pub mod macros;
    pub mod panic_hook;
}

use utils::panic_hook::set_panic_hook;

#[wasm_bindgen]
extern "C" {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("Hello, wasm-bindgen-template!");
}

#[wasm_bindgen]
pub fn start() {
    set_panic_hook();

    log!("hello from console");

    let window = web_sys::window().expect("no global `window` exists");
    let document = window.document().expect("should have a document on window");
    let main = document
        .get_element_by_id("main")
        .expect("No main was found");
    main.set_inner_html("<h1>Hello world!</h1>");

    panic!("error");
}
