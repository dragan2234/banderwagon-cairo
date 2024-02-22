use ark_std::str::FromStr;
use std::env;

use bandersnatch::Fr;

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() == 1 {
        return;
    }

    let lhs = Fr::from_str(&args[2]).unwrap();
    let rhs = Fr::from_str(&args[3]).unwrap();
    if args[1] == "add" {
        println!("{}", lhs + rhs);
    } else if args[1] == "mul" {
        println!("{}", lhs * rhs);
    }
}
