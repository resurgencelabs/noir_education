// a demo of how for loops work in Noir
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