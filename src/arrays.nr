// creates an array with the given items. they must all be of the same type
// there is a need to specify the size of the returned array in such cases
fn createArray(a: Field, b: Field, c: Field) -> [Field; 3] {
    [a, b, c]
}

// changes the middle element of the array to a given variable value
// there is no need to specify the size of the returned array since it will always 
// mirror the size of the input array
fn changeMidElementArray(arr: [Field], x: Field) -> [Field] {
    let mut arr2 = arr;
    arr2[2] = x;
    arr2
}

// adds and returns all the elements of an array
fn sumArray(arr: [u32]) -> u32 {
    let mut sum = 0;
    for i in 0..arr.len() {
        
            sum += arr[i];
        
        
    };
    sum
}


// creates an array with the given items and then sorts them. they must all be of the same type
// there is a need to specify the size of the returned array in such cases
fn createAndSortArray(a: u32, b: u32, c: u32) -> [u32; 3] {
    let arr = [a, b, c];
    arr.sort()
}



// alternative way to add and return all the elements of an array
// the advantage of this approa
fn sumArray2(arr: [u32]) -> u32 {
    
    let sum = arr.reduce(|a, b| a + b);
    sum
}

// a function we will be using as an argument in the next step
fn nextEven(a: u32) -> u32 {
    if a%2 == 0 {
        a
    }
    else {
        a+1
    }
}

// returns an array where each element of the input array is either retained (if even)
// in the output array, or returned after incrementing (if odd)
// the above function which does that to a single numerical value is used as an argument
fn nextEvenArray(arr: [u32]) -> [u32] {
    let arr2 = arr.map(nextEven);
    arr2
}