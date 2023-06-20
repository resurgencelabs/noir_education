mod structs;
mod loops;
use dep::std;

fn main(x : u32, y : pub u32) {
    let z = structs::toSigned(true, x+y);
    constrain x+y == z.value;
    let w = structs::toSigned(true, y);
    let p = structs::addSigned(w, z);
    constrain p.value == (x + y + y);
    
    let c = loops::sum_int(12);

    std::println(c);    
      
}

#[test]
fn test_main() {
    main(1, 2);
    
    
}
