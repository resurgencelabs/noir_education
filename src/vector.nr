use dep::std::collections::vec::Vec;
use dep::std;

// creates a Vector with the given items. they must all be of the same type
// there is a need to specify the type of the returned Vector in such cases
fn createVector(a: u32, b: u32, c: u32, d: u32, e: u32) -> Vec<u32> {
    let mut v: Vec<u32> = Vec::new();
    v.push(a);
    v.push(b);
    v.push(c);
    v.push(d);
    v.push(e);
    v 
}


// adds and returns sum of all the elements of a vector
fn sumVector(v: Vec<u32>) -> u32 {
    let mut sum = 0;
    let mut v2 = v; //creating a mutable vector clone helps carry out subsequent operations
    for i in 0..v2.len() {
        
            sum += v2.get(i);
        
        
    };
    sum
}


// adds the closest even number after said element index
fn insertClosestEven(v: Vec<u32>, ind: Field) -> Vec<u32> {
    assert (v.len() != 0);
    assert (ind as u32 < v.len() as u32);
    let mut v2 = v;
    let el = v2.get(ind);
    let mut ins: u32 = 0;
    if (el % 2 == 0){
        ins = el + 2;
    }
    else {
        ins = el + 1;
    }
    
    if (v2.len() == ind + 1){
        v2.push(ins);
    }
    else {
        v2.insert(ind, ins);
    }
    
    v2
}


// reverses the order of all the elements inside a vector
fn reverse(v: Vec<u32>) -> Vec<u32> {
    let mut v2 = v;
    let mut v3 = Vec::new();
    for i in 0..v2.len(){
        let mut el = v2.pop();
        v3.push(el);
    }
    v3
}