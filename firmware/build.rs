use std::path::PathBuf;
use std::process::{exit, Command};

fn main() {
    println!("cargo:rerun-if-changed=src/hello_world.S");

    let out_dir: PathBuf = std::env::var("OUT_DIR")
        .expect("OUT_DIR should be set")
        .into();

    dbg!(&out_dir);

    let mut child = Command::new("xa")
        .args(&[
            "-C",
            "src/rom_image.S",
            "-o",
            out_dir
                .join("rom_image.bin")
                .to_str()
                .expect("path should be valid UTF-8"),
        ])
        .spawn()
        .expect("could not run the xa assembler");
    let status = child.wait().expect("child should have succeeded");
    exit(
        status
            .code()
            .expect("process did not result in an exit code"),
    );
}
