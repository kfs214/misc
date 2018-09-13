//
//  ViewController.swift
//  iDrill3
//
//  Created by 牛島一樹 on 2018/06/27.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var lbl: UILabel!
    
    var x = [0, 0]
    var ans: Set <Int> = []
    var question = "a"
    var rep: Set <Int> = []
    var rate = [0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if rate[0] != 0{
            printRate()
        }
        erase()
        Qgen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Qgen(){
        x = [Int(arc4random_uniform(9) + 1), Int(arc4random_uniform(9) + 1)]
        question = "x^2 - \(x[0] + x[1])x + \(x[0] * x[1]) = 0"
        printQ(question: question)
        ans = [x[0], x[1]]
    }
    
    func printRate(){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 400
        let bHeight: CGFloat = 30
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 - 60
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        label.backgroundColor = UIColor.orange
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // 文字の色を白に定義.
        label.textColor = UIColor.white
        
        // UILabelに文字を代入.
        label.text = "\(rate[0])問中　\(rate[1])問正解　正答率：\(rate[1] * 100 / rate[0])%"
        
        // 文字の影をグレーに定義.
        label.shadowColor = UIColor.gray
        
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
    }
    
    func erase(){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 500
        let bHeight: CGFloat = 55
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 + 60
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景を黒色に.
        label.backgroundColor = UIColor.black
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
    }
    
    func printQ(question: String){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/6 - bHeight/2
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        label.backgroundColor = UIColor.orange
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // 文字の色を白に定義.
        label.textColor = UIColor.white
/*
        // 通常の文字フォントサイズ
        let font:UIFont? = UIFont(name: "Helvetica", size:40)
        
        // べき乗の文字フォントサイズ
        let fontSuper:UIFont? = UIFont(name: "Helvetica", size:20)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: question, attributes: [.font:font!])
        attString.setAttributes([.font:fontSuper!,.baselineOffset:20], range: NSRange(location:1,length:1))
//        lbl.attributedText = attString
        */
        // UILabelに文字を代入.
        label.text = question
        
        // 文字の影をグレーに定義.
        label.shadowColor = UIColor.gray
        
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
    }
    
    func trueFalse(){
        if rep == ans{
            rate[1] += 1
            // ボタンのサイズを定義.
            let bWidth: CGFloat = 100
            let bHeight: CGFloat = 50
            
            // 配置する座標を定義(画面の中心).
            let posX: CGFloat = self.view.bounds.width/2 + 5
            let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 + 60
            
            // Labelを作成.
            let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
            
            // UILabelの背景をオレンジ色に.
            label.backgroundColor = UIColor.orange
            
            // UILabelの枠を丸くする.
            label.layer.masksToBounds = true
            
            // 丸くするコーナーの半径.
            label.layer.cornerRadius = 20.0
            
            // 文字の色を白に定義.
            label.textColor = UIColor.white
            
            // UILabelに文字を代入.
            label.text = "正解"
            
            // 文字の影をグレーに定義.
            label.shadowColor = UIColor.gray
            
            // Textを中央寄せにする.
            label.textAlignment = NSTextAlignment.center
            
            // ViewにLabelを追加.
            self.view.addSubview(label)
            
        }else{
            // ボタンのサイズを定義.
            let bWidth: CGFloat = 100
            let bHeight: CGFloat = 50
            
            // 配置する座標を定義(画面の中心).
            let posX: CGFloat = self.view.bounds.width/2 + 5
            let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 + 60
            
            // Labelを作成.
            let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
            
            // UILabelの背景をオレンジ色に.
            label.backgroundColor = UIColor.orange
            
            // UILabelの枠を丸くする.
            label.layer.masksToBounds = true
            
            // 丸くするコーナーの半径.
            label.layer.cornerRadius = 20.0
            
            // 文字の色を白に定義.
            label.textColor = UIColor.white
            
            // UILabelに文字を代入.
            label.text = "不正解"
            
            // 文字の影をグレーに定義.
            label.shadowColor = UIColor.gray
            
            // Textを中央寄せにする.
            label.textAlignment = NSTextAlignment.center
            
            // ViewにLabelを追加.
            self.view.addSubview(label)
        }
        rate[0] += 1
    }
    var strKey = " "
    
    func printRep(){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 100
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth - 5
        let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 + 60
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        label.backgroundColor = UIColor.orange
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // 文字の色を白に定義.
        label.textColor = UIColor.white
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
    }
    
    func printRep(key: Int){
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 100
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth - 5
        let posY: CGFloat = self.view.bounds.height/6 - bHeight/2 + 60
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        label.backgroundColor = UIColor.orange
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // 文字の色を白に定義.
        label.textColor = UIColor.white
        
        // UILabelに文字を代入.
        strKey += " "
        strKey += String(key)
        strKey += "     "
        label.text = strKey
        
        // 文字の影をグレーに定義.
        label.shadowColor = UIColor.gray
        
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
        
    }
    
    @IBAction func one() {
        rep.insert(1)
        printRep(key: 1)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func two() {
        rep.insert(2)
        printRep(key: 2)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func three() {
        rep.insert(3)
        printRep(key: 3)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func four() {
        rep.insert(4)
        printRep(key: 4)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func five() {
        rep.insert(5)
        printRep(key: 5)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func six() {
        rep.insert(6)
        printRep(key: 6)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func seven() {
        rep.insert(7)
        printRep(key: 7)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func eight() {
        rep.insert(8)
        printRep(key: 8)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func nine() {
        rep.insert(9)
        printRep(key: 9)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func zero() {
        rep.insert(0)
        printRep(key: 0)
        if rep.count == ans.count{
            trueFalse()
        }
    }
    @IBAction func neXT() {
        rep = []
        ans = []
        strKey = " "
        viewDidLoad()
    }
    @IBAction func clear() {
        rep = []
        strKey = " "
        printRep()
    }
    

}

