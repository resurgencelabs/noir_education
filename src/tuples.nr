

fn create_tuple(x: Field, y: Field, z: u32) -> (Field, Field, u32)  {
    let tup = (x, y, z);
    tup
}

// also a tutorial on how to iterate over a tuple
// currently, we don't have a way to use a loop like
// for i in 0..8
// {
//   sum += t.i; 
// };
// until then, manually listing each element is the only way
fn sum_tuple(t: (u32, u32, u32, u32, u32, u32, u32, u32)) -> u32 {
    let mut sum = t.0 + t.1 + t.2 + t.3 + t.4 + t.5 + t.6 + t.7;
    
    sum
} 

// notice how the dimensions of the tuple must be known beforehand
fn replace_in_tuple(t: (Field, Field, Field), n: u8, val: Field) -> (Field, Field, Field) {
    assert (n > 0);
    assert (n <= 3);
    if n == 1 {
        let mut (a, b, c) = t;
        a = val;
        let ftup = (a, b, c);
        ftup
        
    }
    else {
        if n == 2 {
        let mut (a, b, c) = t;
        b = val;
        let ftup = (a, b, c);
        ftup
        
        }
        else {
            let mut (a, b, c) = t;
            c = val;
            let ftup = (a, b, c);
            ftup
        }
    }
    
    

}