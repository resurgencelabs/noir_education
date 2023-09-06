mod structs;
mod loops;
mod arrays;
mod tuples;
mod vector;
mod unconstrained_tut;
use dep::std;

fn main(x : u32, y : pub u32) {
    let z = structs::toSigned(true, x+y);
    assert (x+y == z.value);
    let w = structs::toSigned(true, y);
    let p = structs::addSigned(w, z);
    assert (p.value == (x + y + y));
    
    let c = loops::sum_int(12);
    std::println(c);    

    


      
   
    

	
    
}



#[test]
fn test_array_sum() {
    let arr = [1,2,3,5,0];
    let sum = arrays::sumArray(arr);
    assert (sum == 11);
}

#[test]
fn test_array_sum2() {
    let arr = [1,2,3,5,0];
    let sum = arrays::sumArray2(arr);
    assert (sum == 11);
}

#[test]
fn test_mid_sum() {
    let arr = [1, 3, 5, 0, 8];
    let arr2 = arrays::changeMidElementArray(arr, 6);
    assert (arr2[2] == 6);
}

#[test]
fn test_next_even_array() {
    let arr = [0, 2, 5, 8, 11];
    let ev_arr = arrays::nextEvenArray(arr);
    assert (ev_arr[2] == 6);
}

#[test]
fn test_replace_in_tuple() {
    
    let tp = tuples::replace_in_tuple((7,70,777), 2, 77 as Field);
    assert (tp.1 == 77);
}


#[test]
fn test_even_insert_vector() {
    let mut vec = vector::createVector(1, 3, 4, 0, 9);
    vec = vector::insertClosestEven(vec, 3);
    
    assert (vec.get(3) == 2);
}

#[test]
fn test_reverse_vector() {
    let mut vec = vector::createVector(1, 3, 4, 0, 9);
    vec = vector::reverse(vec);

    
    assert (vec.get(0) == 9);
}

#[test]
fn test_tuple_sum(){
    let stp = tuples::sum_tuple((1, 3, 5, 6, 9, 0, 3, 15));
    assert (stp == 42);

}


#[test]
fn test_tuple_replace() {
    let rep = tuples::replace_in_tuple((1, 2, 3), 2, 10);
    assert (rep.1 == 10);
}


#[test]
fn test_constrained_loop() {
    let sum = loops::sum_six_multiple(20);
    assert (sum == 36);
}

#[test]
fn test_unconstrained_loop() {
    let sum = loops::sum_six_multiple2(25);
    assert (sum == 60);
}

#[test]
fn test_unconstrained_factorial() {
    let f = unconstrained_tut::unconstrained_factorial(5);
    assert (f == 120);
}


#[test]
fn test_recursive_sum() {
    let s = unconstrained_tut::recursive_sum(4);
    assert (s == 10);
}