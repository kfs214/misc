//y=x^2のとき、xはどのような範囲になるか

var y = 16.0

var x = 0.0
var r = 1.0

for _ in 1...16{
    if y != x * x{
        while y > x * x{
            x += r
        }
        if y == x * x{
            print("x=\(x)")
        }else{
            print("xは\(x-r)から\(x)の間")
            x -= r
            r /= 10
            x += r
        }
    }
}


