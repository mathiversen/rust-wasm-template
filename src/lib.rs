use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("Hello, wasm-bindgen-template!");
}

#[wasm_bindgen]
pub fn start() {
    let window = web_sys::window().expect("no global `window` exists");
    let document = window.document().expect("should have a document on window");
    let main = document.get_element_by_id("main").expect("No main was found");
    main.set_inner_html("<h1>Loaded!</h1>");
}
