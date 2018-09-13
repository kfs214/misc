//汎用log計算機

import UIKit

let y = 40.0
var x = y
let a = 10.0
var tem: [Double] = []
var sum = 0.0
let str = 10

while x >= a{
    sum += 1
    x /= a
}

for i in 1...str{
    x = x * x
    if x >= a{
        x /= a
        tem.append(roop(n:i))
    }
}

func roop(n: Int) -> Double{
    var m = 1.0
    for _ in 1...n{
        m = m * 2
    }
    return m
}

for i in 0..<tem.count{
    sum += 1 / tem[i]
}
print("log(\(a))\(y) = \(sum)")
