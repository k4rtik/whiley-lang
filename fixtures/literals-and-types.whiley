package whiley::fixtures

type Node is {
    int value,
    &{int value} next
}

function literals() -> int:
    bool truthy = true
    int decimal = 12_345
    int hex = 0xFF
    int octal = 0o77
    int binary = 0b1010
    real ratio = 3.14
    char newline = '\n'
    string greeting = "hello\twhiley"
    return decimal

function project({int x, int y} point) -> int:
    return point.x + point.y

function lengthOf(int[] items) -> int:
    return |items|
