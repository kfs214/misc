//
//  ViewController.swift
//  iDrill
//
//  Created by 牛島一樹 on 2018/06/26.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var myTextField: UITextField!

    override func viewDidLoad() {
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posYq: CGFloat = 70
        let posYrate: CGFloat = 10
        
        
        // Labelを作成.
        let q: UILabel = UILabel(frame: CGRect(x: posX, y: posYq, width: bWidth, height: bHeight))
        let rate: UILabel = UILabel(frame: CGRect(x: posX, y: posYrate, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        q.backgroundColor = UIColor.blue
        rate.backgroundColor = UIColor.orange
        
        // Textを中央寄せにする.
        q.textAlignment = NSTextAlignment.center
        
   
        var rate = [0, 0]
        while true{
            var com = 0
            if rate[0] != 0{
                rate.text = "\(rate[0])問出題　\(rate[1])問正解　正解率=\(rate[1]) * 100 / \(rate[1])%"
            }
            var random = [Int(arc4random_uniform(5))]
            switch random[0]
            case 0: //足し算
                random.append(Int(arc4random_uniform(100)))
                random.append(Int(arc4random_uniform(100)))
                random.append(Int(random[1]+random[2]))
                q.text = "\(random[1])+\(random[2])"
                // ViewにLabelを追加.
                self.view.addSubview(q)
                while com != random[3]{
                @IBOutlet weak com: UITextField!
          
            
           
            

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

