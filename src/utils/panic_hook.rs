use console_error_panic_hook;
use std::panic;

pub fn set_panic_hook() {
    panic::set_hook(Box::new(console_error_panic_hook::hook));
}
