//
//  ViewController.swift
//  iDrill2
//
//  Created by 牛島一樹 on 2018/06/26.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mode = 0
    var question = a
    var status = true
    
    switch mode{
    case 0:
        ranNum()
    }
    
    func ranNum(){
        question = String(arc4random_uniform(9))
    }
    
    func trueFalse(ans: Int) -> Bool{
        
    }
    
    func displayQ(disp: String){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posYq: CGFloat = 70
        let posYrate: CGFloat = 10
        
        
        // Labelを作成.
        let q: UILabel = UILabel(frame: CGRect(x: posX, y: posYq, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        q.backgroundColor = UIColor.orange
        
        // Textを中央寄せにする.
        q.textAlignment = NSTextAlignment.center
        
        q.text = question
        // ViewにLabelを追加.
        self.view.addSubview(q)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        while status == true{
            status = false
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

