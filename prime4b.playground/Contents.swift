//素数を列挙

var max = 10000 //10,000まで検証
var prime: [Bool] = []
var list = [2]
var count = 0
for i in 0...max{
    count += 1
//    prime[i] = false
}
//prime[2] = true

//3から調べていく
for i in 3...max{
    //2から割っていく
    var j = 0
    var temp = true
    while j < list.count{
        count += 1
        if i % list[j] == 0{
            j = list.count
            temp = false
        }
        j += 1
    }
    if temp == true{
        print(i)
    }
//    prime[i] = true
    list.append(i)
}
