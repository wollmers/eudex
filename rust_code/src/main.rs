extern crate eudex;

use eudex::Hash;

fn main() {
    use std::fs;
    use std::io::{BufRead, BufReader};
    use std::io::prelude::*;

	let dict = fs::File::open("american-english").unwrap();
	
	let mut file = fs::File::create("rust_reference_hash_values").unwrap();
	
	for i in BufReader::new(dict).lines() {
		let s = &i.unwrap().to_string();
		let mut v = format!("{:?}", Hash::new(s));
		v = v.replace("Hash { hash: ", "").replace(" }", "");
		let vi = v.parse::<u64>().unwrap();
		let t = file.write_fmt(format_args!("{:?}\n", vi));
	}
}
