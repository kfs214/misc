print(2)
var i = 3               //3から調べる
var count = 0
var prime = [2]          //素数の一覧
while i <= 100 {    //iが10,000になるまで繰り返す
    
//ここからiの平方根を求める
//y=x^2のとき、xはどのような範囲になるか
    var x = 0
    while i > x * x{
        x += 1
        count += 1
    }
    x += 2

//ここから素数かを判定する
    var b = true            //合成数と判明したらfalseに
    var j = 1
 //   if prime.count > j{
      while j < x{
            if i % j  == 0{
                b = false
 //               prime[j] = i
            }
            count += 1
            j += 1
        }
        if b == true{
            print(i)
            prime.append(i)
        }
        i += 1
 //   }
}
print("判定回数:\(count)")
