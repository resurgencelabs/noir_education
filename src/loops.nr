// a demo of how for loops work in Noir
// sum of the first n positive integers <= n
fn sum_int(n: u32) -> u32 {
    constrain n < 100;
    // currently, loops can't have dynamic limits so we must run loops over a known interval
    
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
    constrain n < 100;
    // currently, loops can't have dynamic limits so we must run loops over a known interval
    
    let mut sum = 0;
    for i in 1..100{
        let mut j = i as u32; // needed because the i above was a Field type
        if (j <= n) & (j % 6 == 0){
            sum = sum + j;
        }
    };
    sum
}