//
//  main.swift
//  drill
//
//  Created by 牛島一樹 on 2018/06/23.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import Foundation

func pm(x: Int) -> String{
    var y = "a"
    if x < 0{
        y = String(x)
        return y
    }else{
        y = "+"
        y += String(x)
        return y
    }
}


print("四則演算の練習をしましょう")
var com = 10000
var rate = [0, 0]
while com != 12345678{
    com = 10000
    var random = [Int(arc4random_uniform(5))]
    if rate[0] != 0{
        print("\(rate[0])問出題　\(rate[1])問正解　正答率\(100 * rate[1] / rate[0])%\n")
    }
    if random[0] == 0{ //足し算
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(random[1]+random[2]))
        print("\(random[1])+\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int(readLine()!)!
            rate[0] += 1
        }
        print("正解です")
            rate[1] += 1
        
    }else if random[0] == 1{       //引き算
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(UInt32(random[1]))))
        random.append(Int(random[1]-random[2]))
        print("\(random[1])-\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int(readLine()!)!
            rate[0] += 1
        }
        print("正解です")
            rate[1] += 1
        
    }else if random[0] == 2{       //掛け算
        random.append(Int(arc4random_uniform(99)) + 1)
        random.append(Int(arc4random_uniform(9)) + 1)
        random.append(Int(random[1]*random[2]))
        print("\(random[1])×\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int(readLine()!)!
            rate[0] += 1
        }
        print("正解です")
            rate[1] += 1
        
    }else if random[0] == 3{       //割り算
        random.append(0)
        random.append(Int(arc4random_uniform(9)) + 1)
        random.append(Int(arc4random_uniform(9)) + 1)
        random[1] = random[2] * random [3]
        print("\(random[1])÷\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int(readLine()!)!
            rate[0] += 1
        }
        print("正解です")
            rate[1] += 1
        
    }else if random[0] == 4{   //2次方程式
        var temp = [0, 0]
        for _ in 0..<4{
            temp[0] = Int(arc4random_uniform(18))
            temp[1] = 9 - temp[0]
            random.append(temp[1])  //[1~4]
        }
        random[1] = 1   //難易度高すぎたため
        random[2] = 1
        random.append(random[2] * random[3])    //[5]
        random.append(random[1] * random[4])    //[6]
        random.append(random[1] * random[2])                            //a
        random.append(random[1] * random[5] + random[2] * random[6])    //b
        random.append(random[5] * random[6])                            //c
        print("x^2\(pm(x:random[8]))x\(pm(x:random[9]))=0")
        let ans: Set = [random[3], random[4]]
        var rep: Set = [0,0]
        while ans != rep{
            print("1つめのxは？")
            rep = [Int(readLine()!)! * -1]
            print("2つめのxは？")
            rep.insert(Int(readLine()!)! * -1)
            rate[0] += 1
        }
        print("正解です")
            rate[1] += 1
    }
}
