//
//  main.swift
//  rsa64
//
//  Created by 牛島一樹 on 2018/06/29.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import Foundation

var max = 1
var k = 1

func primeDetec() -> Int{
    for _ in 0..<k / 2{
        max *= 2
    }
    var kp = 10
    var pp = false
    var n = 0
    while pp == false{
        n = Int(arc4random_uniform(UInt32(max)))
        pp = true
        if n % 2 == 0{
            n -= 1
        }
        var s = 0
        var d = n - 1
        while d % 2 == 0{
            s += 1
            d /= 2
        }
        var i = 0
        while pp == true && i < k{
            let a = Int(arc4random_uniform(UInt32(n - 1)))
            if Int(pow(Double(a),Double(d))) % n == 1{
                pp = false
            }else{
                var r = 0
                while r < s && pp == true{
                    if Int(pow(Double(a),pow(Double(2),Double(r))*d)) % n != n - 1{
                        pp = false
                    }
                    r += 1
                }
            }
            i += 1
        }
    }
    return n
}

func display(result: Int){
    print("結果は\(result)です")
}

func poh(xp: Int, y: Int, n: Int) -> Int{
    var xr = 1
    for _ in 0..<y{
        xr = xr * xp % n
    }
    return xr
}

func mode(){
    print("1.暗号化　2.復号化　3.初期化　4.一覧　5.解読")
    let command = Int(readLine()!)!
    switch command{
    case 1:
        print("\n平文m")
        let m = Int(readLine()!)!
        //    print("m = \(m)\n")
        print("公開鍵e")
        let e = Int(readLine()!)!
        print("公開鍵n")
        let n = Int(readLine()!)!
        display(result: encrypt(m: m, e: e, n: n))
        print("\n")
        mode()
    case 2:
        print("\n暗号文c")
        let c = Int(readLine()!)!
        print("秘密鍵d")
        let d = Int(readLine()!)!
        print("公開鍵n")
        let n = Int(readLine()!)!
        print("\n")
        display(result: decrypt(c: c, d: d, n: n))
        mode()
    case 3:
        print("セキュリティパラメータk")
        k = Int(readLine()!)!
        initialize()
        print("\n")
        mode()
    case 4:
        print("公開鍵n")
        let n = Int(readLine()!)!
        print("公開鍵e")
        let e = Int(readLine()!)!
        print("秘密鍵d")
        let d = Int(readLine()!)!
        for i in 0..<n{
            print("\(decrypt(c: encrypt(m: i, e: e, n: n), d: d, n: n)), \(encrypt(m: i, e: e, n: n))")
        }
        mode()
    case 5:
        print("セキュリティパラメータk")
        k = Int(readLine()!)!
        print("\n暗号文c")
        let c = Int(readLine()!)!
        print("公開鍵e")
        let e = Int(readLine()!)!
        print("公開鍵n")
        let n = Int(readLine()!)!
        display(result: brk(c: c, e: e, n: n))
        mode()
    default:
        print("1、2、3または4を半角数字で入力してください")
    }
}

mode()
