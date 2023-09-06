// Calculates the factorial for the supplied argument in an unconstrained context
unconstrained fn unconstrained_factorial(k: u32) -> u32 {
    assert (k != 0);
    let mut prod = 1 as u32;
    for i in 1..(k+1) {
        prod = prod * (i as u32);
    }
    prod
}


// A u72 to u8 conversion as shown in the official Noir docs
unconstrained fn u72_to_u8(num: u72) -> [u8; 8] {
    let mut out: [u8; 8] = [0; 8];
    for i in 0..8 {
        out[i] = (num >> (56 - (i * 8))) as u8;
    }
    out
}


// Also a tutorial on how to use Recursive functions in Noir
// Calculates the sum of the first k natural numbers, recursively
unconstrained fn recursive_sum(k: u8) -> u8 {
    if k == 0 {
        k
    }
    else {
        k + recursive_sum(k - 1)
    }
}