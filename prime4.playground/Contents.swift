print(2)
var i = 3
var count = 0
var prime = [2]
while i <= 10000 {    //iが10,000になるまで繰り返す
    
    //ここからiの平方根を求める
    //y=x^2のとき、xはどのような範囲になるか
    var x = 0
    while i >= x * x{
        x += 1
        count += 1
    }
    //ここから素数かを判定する
    var b = true
    var j = 0
    var k = 2
    while k < x{
        if i % prime[j]  == 0{
            b = false
            k = x
        }
        j += 1
        k += 1
        count += 1
    }
        
    count += 1
    if b == true{
        prime.append(i)
        print(i)
    }
    i += 1
}
print("判定回数:\(count)")
