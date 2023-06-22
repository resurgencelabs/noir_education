mod structs;
mod loops;
mod arrays;
use dep::std;

fn main(x : u32, y : pub u32) {
    let z = structs::toSigned(true, x+y);
    assert (x+y == z.value);
    let w = structs::toSigned(true, y);
    let p = structs::addSigned(w, z);
    assert (p.value == (x + y + y));
    
    let c = loops::sum_int(12);
    std::println(c);    

    let arr = [1, 3, 5, 0, 8];
    let arr2 = arrays::changeMidElementArray(arr, 6);
    assert (arr2[2] == 6);

    let xy = 3;
    let arr3 = arrays::createArray(x as Field, y as Field, xy);
    let mut arr4 = [0 as u32, 0 as u32, 0 as u32];
    for i in 0..3{
        arr4[i] = arr3[i] as u32;
    };
    let sum = arrays::sumArray(arr4);
    assert (sum == 16 as u32);

    let arr5 = arrays::createAndSortArray(x, xy as u32, y);
    assert (arr5[0] == 3);

    let sum2 = arrays::sumArray2(arr4);
    assert (sum == sum2);

    let evenArr = arrays::nextEvenArray(arr5);
    assert (evenArr[0] == 4);

      
}

#[test]
fn test_main() {
    main(1, 2);
    
    
}
