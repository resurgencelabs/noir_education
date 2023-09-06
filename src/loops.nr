// a demo of how for loops work in Noir
// sum of the first n positive integers <= n
fn sum_int(n: u32) -> u32 {
    assert (n < 100);
    
    
    let mut sum = 0;
    for i in 1..100{
        let mut j = i as u32; // needed because the i above was a Field type
        if j <= n {
            sum = sum + j;
        }
    };
    sum
}


// a demo of how for loops work in Noir
// sum of positive integers <= n provided they are divisible by 6
fn sum_six_multiple(n: u32) -> u32 {
    assert (n < 100);
    // now, we do have a means of looping over a dynamic range with unconstrained functions, but
    // this setup enables us to do so while retaining a constrained execution
    
    let mut sum = 0;
    for i in 1..100{
        let mut j = i as u32; // needed because the i above was a Field type
        if (j <= n) & (j % 6 == 0){
            sum = sum + j;
        }
    };
    sum
}


// the unconstrained keyword now enables us to loop over a dynamic range 
// where n is supplied as an argument for the function
unconstrained fn sum_six_multiple2(n: u32) -> u32 {
    assert (n < 100);
    
    let mut sum = 0;
    for i in 1..n{
        let mut j = i as u32; // needed because the i above was a Field type
        if (j % 6 == 0){
            sum = sum + j;
        }
    };
    sum
}