mod structs;
mod loops;
mod arrays;
mod tuples;
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

    
    let tp = tuples::create_tuple(7, xy, x);
    assert (tp.2 == x);
      
    let stp = tuples::sum_tuple((1, 3, 5, 6, 9, 0, 3, 15));
    std::println(stp);

    let rep = tuples::replace_in_tuple((1, 2, 3), 2, 10);
    assert (rep.1 == 10);

	
    
}



#[test]
fn test_array_sum() {
    let arr = [1,2,3,5,0];
    let sum = arrays::sumArray(arr);
    assert (sum == 11);
}

#[test]
fn test_next_even_array() {
    let arr = [0, 2, 5, 8];
    let ev_arr = arrays::nextEvenArray(arr);
    assert (ev_arr[2] == 6);
}

#[test]
fn test_replace_in_tuple() {
    
    let tp = tuples::replace_in_tuple((7,70,777), 2, 77 as Field);
    assert (tp.1 == 77);
}