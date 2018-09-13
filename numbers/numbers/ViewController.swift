//
//  ViewController.swift
//  numbers
//
//  Created by 牛島一樹 on 2018/06/26.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func one() {
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posYq: CGFloat = 70
        
        
        // Labelを作成.
        let q: UILabel = UILabel(frame: CGRect(x: posX, y: posYq, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        q.backgroundColor = UIColor.blue
        
        // Textを中央寄せにする.
        q.textAlignment = NSTextAlignment.center
        // ViewにLabelを追加.
        q.text = "1"
        self.view.addSubview(q)
    }

    
    @IBAction func two() {
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posYq: CGFloat = 70
        
        
        // Labelを作成.
        let q: UILabel = UILabel(frame: CGRect(x: posX, y: posYq, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        q.backgroundColor = UIColor.blue
        
        // Textを中央寄せにする.
        q.textAlignment = NSTextAlignment.center
        // ViewにLabelを追加.
        q.text = "2"
        self.view.addSubview(q)
    }
    
    
}

