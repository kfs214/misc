var i = 2
var count = 0
while i <= 10000 {    //iが10,000になるまで繰り返す
    
//ここからiの平方根を求める
//y=x^2のとき、xはどのような範囲になるか
    var x = 0
    while i >= x * x{
        x += 1
        count += 1
    }

//ここから素数かを判定する
    var j = 2
    var b = true
    while j < x{
        if i % j  == 0{
            b = false
            j = i
        }
        j += 1
        count += 1
    }
    if b == true{
        print(i)
    }
    i += 1
}
print("判定回数:\(count)")

