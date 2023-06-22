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
// note that this can be used only so long as the array is not longer than 5 elements
// since for loops in Noir cannot currently run indefinitely, 
// such a specification is necessary
fn sumArray(arr: [u32], n: u32) -> u32 {
    let mut sum = 0;
    for i in 0..5 {
        if i as u32 < n{
            sum += arr[i];
        }
        
    };
    sum
}