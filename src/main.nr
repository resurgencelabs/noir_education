mod structs;
mod loops;
mod arrays;
use dep::std;

fn main(x : u32, y : pub u32) {
    let z = structs::toSigned(true, x+y);
    constrain x+y == z.value;
    let w = structs::toSigned(true, y);
    let p = structs::addSigned(w, z);
    constrain p.value == (x + y + y);
    
    let c = loops::sum_int(12);
    std::println(c);    

    let arr = [1, 3, 5, 0, 8];
    let arr2 = arrays::changeMidElementArray(arr, 6);
    constrain arr2[2] == 6;

    let xy = 3;
    let arr3 = arrays::createArray(x as Field, y as Field, xy);
    let mut arr4 = [0 as u32, 0 as u32, 0 as u32];
    for i in 0..3{
        arr4[i] = arr3[i] as u32;
    };
    let sum = arrays::sumArray(arr4, 3);
    constrain sum == 16 as u32;


      
}

#[test]
fn test_main() {
    main(1, 2);
    
    
}
