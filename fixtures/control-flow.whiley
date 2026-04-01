package whiley::fixtures

function classify(int x) -> int:
    switch x:
        case 0:
            return 0
        case 1:
            return 1
        default:
            return -1

function sumTo(int n) -> int:
    int total = 0
    for i in 0..n:
        total = total + i
    return total

method countDown(int n):
    while n > 0:
        n = n - 1

function choose(bool flag, int lhs, int rhs) -> int:
    if flag:
        return lhs
    else:
        return rhs
