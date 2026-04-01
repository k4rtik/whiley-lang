package whiley::fixtures

import * from std::ascii
import String from std::strings

type Pair<T> is {
    T first,
    T second
}

type NatPair is (nat, nat)

type BoundedInt is int where $ >= 0

function identity<T>(T x) -> T:
    return x

method clamp(int x, int lower, int upper) -> int
requires lower <= upper
ensures lower <= $ && $ <= upper:
    if x < lower:
        return lower
    else if x > upper:
        return upper
    else:
        return x

property inBounds(int x, int lower, int upper) -> bool:
    return lower <= x && x <= upper

variant maybeInt:
    int
    null
