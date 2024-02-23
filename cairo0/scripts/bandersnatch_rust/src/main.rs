use ark_std::str::FromStr;
use std::env;

use bandersnatch::SWAffine;
use bandersnatch::{Fq, Fr};

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() == 1 {
        return;
    }

    if args[1] == "addFr" {
        let lhs = Fr::from_str(&args[2]).unwrap();
        let rhs = Fr::from_str(&args[3]).unwrap();
        println!("{}", lhs + rhs);
    } else if args[1] == "mulFr" {
        let lhs = Fr::from_str(&args[2]).unwrap();
        let rhs = Fr::from_str(&args[3]).unwrap();
        println!("{}", lhs * rhs);
    } else if args[1] == "addSW" {
        /*
        let x_a = Fq::from_str(&args[2]).unwrap();
        let y_a = Fq::from_str(&args[2]).unwrap();
        let x_b = Fq::from_str(&args[2]).unwrap();
        let y_b = Fq::from_str(&args[2]).unwrap();
        let point_a = SWAffine::new(x_a, y_a, false);
        let point_b = SWAffine::new(x_b, y_b, false);
        */

        let generator_x = Fq::from_str(
            "30900340493481298850216505686589334086208278925799850409469406976849338430199",
        )
        .unwrap();
        let generator_y = Fq::from_str(
            "12663882780877899054958035777720958383845500985908634476792678820121468453298",
        )
        .unwrap();

        let generator = SWAffine::new(generator_x, generator_y, false);
        // i want to do 5G here print it so we can get the values
        //
        // also i need to get the args in a good way (two dif points)
        let res = generator;
        println!("{}", res);
    } else if args[1] == "mulSw" {
    }
}
