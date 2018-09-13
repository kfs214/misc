var i = 2
var count = 0
while i <= 10000 {    //10,000まで
    var j = 2
    var b = true
    while j < i{
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
