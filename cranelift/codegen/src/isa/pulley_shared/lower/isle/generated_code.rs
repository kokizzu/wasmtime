// See https://github.com/rust-lang/rust/issues/47995: we cannot use `#![...]` attributes inside of
// the generated ISLE source below because we include!() it. We must include!() it because its path
// depends on an environment variable; and also because of this, we can't do the `#[path = "..."]
// mod generated_code;` trick either.
#![allow(
    dead_code,
    unreachable_code,
    unreachable_patterns,
    unused_imports,
    unused_variables,
    non_snake_case,
    unused_mut,
    irrefutable_let_patterns,
    clippy::all
)]

include!(concat!(env!("ISLE_DIR"), "/isle_pulley_shared.rs"));