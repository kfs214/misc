//
//  main.swift
//  prime6
//
//  Created by 牛島一樹 on 2018/07/01.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import Foundation


let k = 64

func poh(xp: Int, y: Int, n: Int) -> Int{
    var xr = 1
    for _ in 0..<y{
        xr = xr * xp % n
    }
    return xr
}

func primeDetec() -> Int{
    var max = 1
    for _ in 0..<k / 2{
        max *= 2
    }
    let kp = 10
    var pp = false
    var n = 0
    while pp == false{
        n = Int(arc4random_uniform(UInt32(max / 2 - 2))) * 2 + 3
        //        n = 29
        pp = true
        var s = 0
        var d = n - 1
        while d % 2 == 0{
            s += 1
            d /= 2
        }
        var i = 0
        while pp == true && i < kp{
            let a = Int(arc4random_uniform(UInt32(n - 2))) + 1
            if Int(poh(xp: a, y: d, n: n)) != 1{
                var r = 0
                pp = false
                while r < s && pp == false{
                    if (Int(poh(xp: a, y: Int(pow(Double(2), Double(r)) * Double(d)), n: n))) == n - 1{
                        pp = true
                    }
                    r += 1
                }
            }
            i += 1
        }
    }
    return n
}

for _ in 1...10{
    print(primeDetec())
}
