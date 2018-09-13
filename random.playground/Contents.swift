//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var cand = 10
var times = 10000000

var counta = [0]
var countu = [0]
for _ in 1...cand{
    counta.append(0)
    countu.append(0)
}

for _ in 1...times{
    counta[Int(arc4random())%cand] += 1
    countu[Int(arc4random_uniform(UInt32(cand)))] += 1
}

print("counta")
for i in 1..<cand{
    print(counta[i])
}

print("\n\n\ncountu")
for i in 1..<cand{
    print(countu[i])
}
