//
//  main.swift
//  rsa
//
//  Created by 牛島一樹 on 2018/06/28.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import Foundation

var prime = [true]
var max = 1
var k = 1

func primeDetec(){
    print("セキュリティパラメータk")
    k = Int(readLine()!)!
    //print("k = \(k)\n")
    //let k = 8
    
    for _ in 0..<k / 2{
        max *= 2
    }
        print("max=\(max)")
    //    print("2^(k/2)=\(max)")

    for i in 0...max{
        prime.append(true)
        print("\(i)まで配列生成完了")
    }
    prime[0] = false
    prime[1] = false
    
    var rmax = 1
    while max >= rmax * rmax{
        rmax += 1
    }
        print("rmax=\(rmax)")
    
    //2からかけていく
       print("素数一覧生成開始")
    var i = 2
    while i < rmax{
        if prime[i] == true{
            for j in 2...max / i{
                prime[i*j] = false
            }
            //            print("i=\(i)")
        }
        i += 1
    }
       print("素数一覧生成完了")
}

func initialize(){
    primeDetec()
    //pqを生成
    var p = Int(arc4random_uniform(UInt32(max)))
//    print("p(仮)=\(p)")
    while prime[p] == false{
        p -= 1
        if p < 2{
            p = Int(arc4random_uniform(UInt32(max)))
        }
    }
//    print("p=\(p)")

    var q = Int(arc4random_uniform(UInt32(max)))
//    print("q(仮)=\(q)")
    if q == p{
        q = Int(arc4random_uniform(UInt32(max)))
    }
    while prime[q] == false{
        q -= 1
        if q < 2{
            q = Int(arc4random_uniform(UInt32(max)))
        }
        if q == p{
            q = Int(arc4random_uniform(UInt32(max)))
        }
    }
//    print("q=\(q)")

    let n = p * q

    //諸々定義
    let on = (p - 1) * (q - 1)
    var e = 3
    if on > max{
     e = Int(arc4random_uniform(UInt32(max)))
     while prime[e] == false{
            e -= 1
     }
     }else{
     e = Int(arc4random_uniform(UInt32(on)))
     while prime[e] == false{
            e -= 1
     }
     }
//    print("on=\(on)")

    var d = 1
    while on % e == 0{
//        print("on % \(e) == 0")
        e += 1
        while prime[e] == false{
//            print("prime[\(e)] == false")
            e += 1
        }
    }
    while d * e % on != 1{
        d += 1
//        print("d(仮)=\(d)")
    }
    print("k=\(k) n=\(n) e=\(e) d=\(d)")
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

func encrypt(m: Int, e: Int, n: Int) -> Int{
    return poh(xp: m, y: e, n: n)
//    print("m^e = \(poh(xp: m, y: e))")
}

func decrypt(c: Int, d: Int, n: Int) -> Int{
 //   print("c = \(c)\n")
    return poh(xp: c, y: d, n: n)
}

func brk(c: Int, e: Int, n: Int) -> Int{
    var p = 2
    var neoe = e
    primeDetec()
    print("素数検索中")
    while n % p != 0{
        print("\(p)は素数ではないようだ……")
        p += 1
    }
    let q = n / p
    let on = (p - 1) * (q - 1)
    var d = 1
    while on % neoe == 0{
        //        print("on % \(e) == 0")
        neoe += 1
        while prime[neoe] == false{
            //            print("prime[\(e)] == false")
            neoe += 1
        }
    }
    while d * e % on != 1{
        d += 1
        //        print("d(仮)=\(d)")
    }
    
    return decrypt(c: c, d: d, n: n)
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
