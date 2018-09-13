//素数を列挙

var max = 10000 //10,000まで検証
var count = 0

//maxの平方根を求める
var rmax = 1
while max >= rmax * rmax{
    rmax += 1
    count += 1
}

var prime = [true]
for i in 0...max{
    count += 1
    prime.append(true)
}
prime[0] = false
prime[1] = false

//2からかけていく
var i = 2
while i < rmax{
    count += 1
    if prime[i] == true{
        for j in 2...max/i{
            prime[i*j] = false
        }
    }
    i += 1
}

//結果発表
for i in 0...max{
    if prime[i] == true{
        print(i)
    }
}
print("判定回数:\(count)")
