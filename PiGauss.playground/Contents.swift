//: Playground - noun: a place where people can play
//ガウス＝ルジャンドルのアルゴリズムで求めるπ

import UIKit

//√計算機
func root(y: Double) -> Double{
    var x = 0.0
    var r = 1.0
    while y > x * x{
        while y > x * x{
            x += r
        }
        r /= 10
        x -= 9 * r
    }
    return x
}

func roota(y: Double) -> Double{
    var x = 1.0
    for _ in 0...10{
        x = (x + y / x)/2.0
    }
    return x
}

//配列を定義
var a = [1.0]
var b = [1/root(y:2)]
var t = [1/4.0]
var p = [1.0]
let k = 3

//いよいよ計算〜自前の√計算機で〜
print("√2=\(root(y:2))")
for i in 0...k{
    a.append((a[i] + b[i]) / 2)
    b.append(root(y:a[i] * b[i]))
    t.append(t[i] - p[i] * (a[i] - a[i+1]) * (a[i] - a[i+1]))
    p.append(2 * p[i])
}

var pi = (a[k] + b[k]) * (a[k] + b[k]) / 4.0 / t[k]
print("b[\(k)]=\(b[k])")
print("自前π=\(pi)")

//いよいよ計算〜自前の√計算機2号で〜
print("\n√2=\(roota(y:2))")
a = [1.0]
b = [1/roota(y:2)]
t = [1/4.0]
p = [1.0]
for i in 0...k{
    a.append((a[i] + b[i]) / 2)
    b.append(roota(y:a[i] * b[i]))
    t.append(t[i] - p[i] * (a[i] - a[i+1]) * (a[i] - a[i+1]))
    p.append(2 * p[i])
}

pi = (a[k] + b[k]) * (a[k] + b[k]) / 4.0 / t[k]
print("b[\(k)]=\(b[k])")
print("自前2号π=\(pi)")


//いよいよ計算〜既製品の√計算機で〜
print("\n√2=\(sqrt(2))")
a = [1.0]
b = [1/sqrt(2)]
t = [1/4.0]
p = [1.0]
for i in 0...k{
    a.append((a[i] + b[i]) / 2)
    b.append(sqrt(a[i] * b[i]))
    t.append(t[i] - p[i] * (a[i] - a[i+1]) * (a[i] - a[i+1]))
    p.append(2 * p[i])
}

pi = (a[k] + b[k]) * (a[k] + b[k]) / 4.0 / t[k]
print("b[\(k)]=\(b[k])")
print("既製品π=\(pi)")
